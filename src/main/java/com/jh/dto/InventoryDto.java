package com.jh.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InventoryDto {

	private int inum;
	private String casNo;
	private String iname;
	private String category;
	private String brand;
	private String pronum;
	private String mananum;
	private int volume;
	private int stock;
	private Timestamp exdate;
	private Timestamp regdate;
	private String location;
	private int molecular;
}
