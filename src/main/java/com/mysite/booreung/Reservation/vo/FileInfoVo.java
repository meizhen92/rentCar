package com.mysite.booreung.Reservation.vo;

public class FileInfoVo {

	private Integer file_no;
	private String file_name;
	private String file_extension;
	private String file_route;
	private Long file_size;

	public FileInfoVo(Integer file_no, String file_name, String file_extension, String file_route, Long file_size) {
		super();
		this.file_no = file_no;
		this.file_name = file_name;
		this.file_extension = file_extension;
		this.file_route = file_route;
		this.file_size = file_size;
	}

	public Integer getFile_no() {
		return file_no;
	}

	public void setFile_no(Integer file_no) {
		this.file_no = file_no;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_extension() {
		return file_extension;
	}

	public void setFile_extension(String file_extension) {
		this.file_extension = file_extension;
	}

	public String getFile_route() {
		return file_route;
	}

	public void setFile_route(String file_route) {
		this.file_route = file_route;
	}

	public Long getFile_size() {
		return file_size;
	}

	public void setFile_size(Long file_size) {
		this.file_size = file_size;
	}

	@Override
	public String toString() {
		return "FileInfoVo [file_no=" + file_no + ", file_name=" + file_name + ", file_extension=" + file_extension
				+ ", file_route=" + file_route + ", file_size=" + file_size + "]";
	}
}
