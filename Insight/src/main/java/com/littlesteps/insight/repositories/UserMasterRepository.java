package com.littlesteps.insight.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.littlesteps.insight.model.UserMaster;

public interface UserMasterRepository extends CrudRepository<UserMaster, Integer> {
	List<UserMaster> findByUserName(String userName);
	
}
