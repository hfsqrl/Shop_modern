package com.shop.md1.cart;

import lombok.Data;

@Data
public class CartVO {
	
	private long cart_num;
	private long member_num;
	private int cart_count;
	private long item_num;
	
	private String member_id;
	private String item_price;
	private String item_color;
	private String item_size;
	private String item_reserve;
	private String item_image;
	private String item_name;
	
	

}
