package com.shop.md1.product;

import lombok.Data;

@Data
public class ProductVO {

	private long item_num;
	private String item_name;
	private String item_category;
	private String item_price;
	private String item_size;
	private String item_color;
	private long item_reserve;
	private String item_image;
	private String item_contents_image;
	private String item_contents_image2;
}
