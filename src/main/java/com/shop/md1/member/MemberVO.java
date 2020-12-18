package com.shop.md1.member;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private long member_num;
	private String member_id;
	private String member_pw;
	private String member_ask;
	private String member_answer;
	private String member_name;
	private String member_address;
	private String member_phone;
	private int member_sms_agg;
	private String member_email;
	private int member_email_agg;
	private Date member_birth;
	private String member_region;
	private String member_refund_name;
	private String member_refund_bank;
	private long member_refund_account;
	private int member_clause_agg;
	private int member_pi_agg;

}
