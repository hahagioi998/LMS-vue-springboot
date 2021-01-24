package com.tkb.lms.model.admin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.tkb.lms.model.BaseModel;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="left_menu")
public class Left_Menu extends BaseModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="LEFT_MENU_ID")
	private Integer left_menu_id;
	
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
