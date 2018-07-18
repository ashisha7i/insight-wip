package com.littlesteps.insight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.littlesteps.insight.dto.UserDetailsDto;
import com.littlesteps.insight.model.UserAuthorities;
import com.littlesteps.insight.model.UserMaster;
import com.littlesteps.insight.repositories.UserMasterRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	UserMasterRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		
		List<UserMaster> users = userRepository.findByUserName(userName);
		UserDetails springUserDetails = null;
		if(users != null && !users.isEmpty()) {
			for(UserMaster user: users) { 
				UserDetailsDto dto = new UserDetailsDto(user);
				List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
				for(UserAuthorities auth: users.get(0).getAuthorities()) {
					grantList.add(new SimpleGrantedAuthority(auth.getAuthority()));
				}
				springUserDetails = new User(userName, users.get(0).getPassword(), grantList);
			}
		} else {
            System.out.println("User not found! " + userName);
            throw new UsernameNotFoundException("User " + userName + " was not found in the database");
		}
		
		return springUserDetails;
	}
 
    /*@Autowired
    private AppUserDAO appUserDAO;
 
    @Autowired
    private AppRoleDAO appRoleDAO;
 
    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        AppUser appUser = this.appUserDAO.findUserAccount(userName);
 
        if (appUser == null) {
            System.out.println("User not found! " + userName);
            throw new UsernameNotFoundException("User " + userName + " was not found in the database");
        }
 
        System.out.println("Found User: " + appUser);
 
        // [ROLE_USER, ROLE_ADMIN,..]
        List<String> roleNames = this.appRoleDAO.getRoleNames(appUser.getUserId());
 
        List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
        if (roleNames != null) {
            for (String role : roleNames) {
                // ROLE_USER, ROLE_ADMIN,..
                GrantedAuthority authority = new SimpleGrantedAuthority(role);
                grantList.add(authority);
            }
        }
 
        UserDetails userDetails = (UserDetails) new User(appUser.getUserName(), //
                appUser.getEncrytedPassword(), grantList);
 
        return userDetails;
    }*/
 
}
