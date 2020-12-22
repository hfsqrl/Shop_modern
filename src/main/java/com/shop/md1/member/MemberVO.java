package com.shop.md1.member;

import java.sql.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class MemberVO {
	
	private long member_num;
	@NotEmpty
	private String member_id;
	@NotEmpty
	private String member_pw;
	@Length(min = 8, max = 15)
	private String member_pw2;
	
	@NotEmpty
	private String member_ask;
	@NotEmpty
	private String member_answer;
	@NotEmpty
	private String member_name;
	@NotEmpty
	private String member_address;
	@NotEmpty
	private String member_phone;
	private int member_sms_agg;
	@NotEmpty
	@Email
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
