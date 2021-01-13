package com.shop.md1.order;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class OrderVO {
	
	//order_info 컬럼
	private long order_num;
	private Timestamp order_date;
	private String member_name;
	private String order_manage;
	private long member_num;
	private long item_num;
	private long cart_num;
	//order_info 컬럼
	
	//order_info Join FK
	private String item_image;
	private String item_name;
	private long cart_count;
	private String item_price;
	private String item_reserve;
	private String member_id;
	private String item_size;
	private String item_color;
	//order_info Join FK
	

}
