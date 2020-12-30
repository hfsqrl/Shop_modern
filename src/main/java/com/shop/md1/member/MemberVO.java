package com.shop.md1.member;

import java.sql.Date;

import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

import com.sun.istack.NotNull;

import lombok.Data;

@Data
public class MemberVO {
	
	private long member_num;
	@NotEmpty
	@Pattern(regexp = "^[A-Za-z0-9]{6,12}$")
	private String member_id;
	
	private String member_pw;
	@NotEmpty
	@Length(min = 8, max = 15)
	@Pattern(regexp = "^.*(?=^.{8,15}$)(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$")
	@Transient
	private String member_pw2;
	
	@NotEmpty
	private String member_ask;
	@NotEmpty
	private String member_answer;
	@NotEmpty
	private String member_name;
	@NotEmpty
	private String roadFullAddr;
	@NotEmpty
	@Pattern(regexp = "^\\d{3}-\\d{3,4}-\\d{4}$")
	private String member_phone;
	private int member_sms_agg;
	@NotEmpty
	@Pattern(regexp = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$")
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
