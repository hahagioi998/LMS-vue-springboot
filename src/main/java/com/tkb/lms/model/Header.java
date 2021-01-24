package com.tkb.lms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="Header")
public class Header extends BaseModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="HEADER_ID")
	private Integer header_id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="SORT")
	private Integer sort;
	
	@Column(name="PARENT_ID")
	private Integer parent_id;
	
	@Column(name="STATUS")
	private Integer status;
	
	@Column(name="URL")
	private String url;
	
	
	
	

}
