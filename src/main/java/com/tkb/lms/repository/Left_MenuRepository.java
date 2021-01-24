package com.tkb.lms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tkb.lms.model.admin.Left_Menu;

public interface Left_MenuRepository extends JpaRepository<Left_Menu, Integer> {
	
	@Query("SELECT lm.Name FROM lms.left_menu AS lm WHERE lm.SORT=1? AND lm.PARENT_ID=2")
	public Object[] getLeft_Menu(Integer sort,);
	
}
