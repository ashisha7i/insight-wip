package com.littlesteps.insight.repositories;

import org.springframework.data.repository.CrudRepository;

import com.littlesteps.insight.model.UserDetails;

public interface UserDetailsRepository extends CrudRepository<UserDetails, Integer>{
	UserDetails findUserByUserId(String userId);
}
