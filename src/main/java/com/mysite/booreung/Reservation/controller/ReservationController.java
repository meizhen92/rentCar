package com.mysite.booreung.Reservation.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysite.booreung.Reservation.model.CarInfoService;
import com.mysite.booreung.Reservation.model.FileInfoService;
import com.mysite.booreung.Reservation.model.ReservationService;
import com.mysite.booreung.Reservation.model.StoreInfoService;
import com.mysite.booreung.Reservation.vo.CarInfoVo;
import com.mysite.booreung.Reservation.vo.FileInfoVo;
import com.mysite.booreung.Reservation.vo.StoreInfoVo;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;

	@Autowired
	StoreInfoService storeInfoService;

	@Autowired
	CarInfoService carInfoService;

	@Autowired
	FileInfoService fileInfoService;

	@Value("${kakaoMapkey}")
	private String kakaoMapkey;

	@Value("${fileUpload.rootPath}")
	private String rootPath;

	/*
	 * param : locaNo
	 * author : 김미진
	 * description : 해당 location_no 값을 main 화면에서 받아옴(ajax)
	 * */
	@RequestMapping("/reservationdata")
	@ResponseBody
	public Map<String, Object> reservationdata(String locaNo) {
		System.out.println("-------------------reservationdata : start");

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("locaNo", locaNo);

		return resultMap;
	}

	/*
	 * param : locaNo
	 * author : 김미진
	 * description : url 에서 RequestParam으로 지역 값을 가져와 해당 지역 대리점만 조회
	 * */
	@RequestMapping("/reservation13")
	public String reservation13(Model model, @RequestParam(name = "locaNo") String locaNo) {
		System.out.println("-------------------reservation13 : start");
		System.out.println("locaNo      :     " + locaNo);

		List<StoreInfoVo> selStore = storeInfoService.selStore(locaNo);
		System.out.println("selStore      :     " + selStore);

		// store_name, Lati, Longi 리스트 담기
		List<String> selStName = new ArrayList<>();
		List<Double> selStLati = new ArrayList<>();
		List<Double> selStLongi = new ArrayList<>();
		// selStore 리스트를 순회하면서 StoreInfoVo 객체에 접근하는 방법
		for (StoreInfoVo storeInfo : selStore) {
			String storeName = storeInfo.getStore_name();
			Double storeLati = storeInfo.getStore_lati();
			Double storeLongi = storeInfo.getStore_longi();
			selStName.add(storeName);
			selStLati.add(storeLati);
			selStLongi.add(storeLongi);
		}

		model.addAttribute("kakaoMapkey", kakaoMapkey);
		model.addAttribute("selStName", selStName);
		model.addAttribute("selStLati", selStLati);
		model.addAttribute("selStLongi", selStLongi);

		return "Reservation/reservation13";
	}

	/*
	 * param : selStName
	 * author : 김미진
	 * description : 해당 지역 대리점 위도, 경도 조회(대리점 별 위치 마커 표시용)
	 * */
	@RequestMapping("/latiLongi")
	@ResponseBody
	public Map<String, Object> latiLongi(String selStName) {
		System.out.println("-------------------latiLongi : start");

		List<Double> latiLongi = new ArrayList<>();
		latiLongi = storeInfoService.latiLongi(selStName);

		Map<String, Object> resultMap = new HashMap<>();

		resultMap.put("latiLongi", latiLongi);

		return resultMap;
	}

	/*
	 * param : store_name, dayChoiceOut, dayChoiceIn
	 * author : 김미진
	 * description : 해당 지역 대리점&날짜 차량 조회
	 * */
	@PostMapping("/carList")
	@ResponseBody
	public Map<String, Object> carList(String store_name, String dayChoiceOut, String dayChoiceIn,
			CarInfoVo carInfoVo) throws Exception {
		System.out.println("-------------------carList : start");

		// tb_carinfo 와 tb_fileinfo의 정보를 return하므로 Map으로 받아야하고 인스턴스가 복수라 List로 받기
		List<Map<String, String>> carList = carInfoService.carList(store_name, dayChoiceOut, dayChoiceIn);
		System.out.println("carList      :     " + carList);
		// 업로드 이미지 출력하기
		//List<FileInfoVo> flst = .getFiles();

		Map<String, Object> resultmap = new HashMap<>();
		resultmap.put("carList", carList);

		return resultmap;
	}

	/* 선택정보 받아오기 & 선택한 차량 상세정보 */
	@RequestMapping("/nextReser")
	public String nextReser(HttpServletRequest request, Model model, CarInfoVo carInfoVo) {
		System.out.println("-------------------nextReser : start");

		// form으로 부터 받아온 값
		String storeChoice = request.getParameter("storeChoice");
		String carChoice = request.getParameter("carChoice");
		String dayChoiceOut = request.getParameter("dayChoiceOut");
		String dayChoiceIn = request.getParameter("dayChoiceIn");

		// 대여 기간 연산
		try {
			System.out.println("try다요");
			Date date1 = new SimpleDateFormat("yyyy/MM/dd HH:mm").parse(dayChoiceOut);
			Date date2 = new SimpleDateFormat("yyyy/MM/dd HH:mm").parse(dayChoiceIn);
			long diffMin = date2.getTime() - date1.getTime();

			// 일, 시, 분, 초 출력
			long days = (diffMin / (24 * 60 * 60 * 1000L)) % 365;
			long hours = (diffMin / (60 * 60 * 1000L)) % 24;
			long minutes = (diffMin / (60 * 1000L)) % 60;
			model.addAttribute("days", days);
			model.addAttribute("hours", hours);
			model.addAttribute("minutes", minutes);

		} catch (Exception e) {
			System.out.println("catch다요");
		}

		// 선택 차량 상세정보 DB 조회
		CarInfoVo selCarInfo = carInfoService.selCarInfo(carChoice);

		model.addAttribute("storeChoice", storeChoice);
		model.addAttribute("carChoice", carChoice);
		model.addAttribute("dayChoiceOut", dayChoiceOut);
		model.addAttribute("dayChoiceIn", dayChoiceIn);
		model.addAttribute("selCarInfo", selCarInfo);

		return "Reservation/detailReser";
	}

	/* 사진 업로드 */
	@PostMapping("/upImg")
	public String upImg(HttpServletRequest request, @RequestParam("filest") MultipartFile file, FileInfoVo fileInfoVo)
			throws Exception {
		System.out.println("-------------------upImg : start");
		
		int serviceReturn = 0;
		if (file != null && !file.isEmpty()) {
			// 로컬에 저장할 폴더 만들기
			String today = new SimpleDateFormat("yyMMdd").format(new Date());
			String saveFolder = rootPath + File.separator + today;
			File folder = new File(saveFolder);
			if (!folder.exists()) {
				folder.mkdirs();
			}
			// 파일 서버 저장
			String filechar = file.getOriginalFilename();
			File filePath = new File(folder + File.separator + filechar);
			file.transferTo(filePath);

			// 파일 정보 모델에 넣기
			int num = filechar.lastIndexOf(".");
			String physiPathFi = saveFolder + File.separator + filechar;

			String fileName = filechar.substring(0, num).trim();
			String fileEx = filechar.substring(num + 1, filechar.length());
			Long fileSize = file.getSize();

			fileInfoVo.setFile_name(fileName);
			fileInfoVo.setFile_extension(fileEx);
			fileInfoVo.setFile_route(physiPathFi);
			fileInfoVo.setFile_size(fileSize);
			fileInfoService.insertFileInfo(fileInfoVo);

		}
		System.out.println("!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("파일디비저장완료!!!!!!!!!!!!!!!!!!!!!");
		return "Reservation/reservation13";
	}

}
