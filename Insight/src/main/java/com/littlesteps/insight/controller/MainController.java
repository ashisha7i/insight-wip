package com.littlesteps.insight.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.littlesteps.insight.repositories.UserMasterRepository;
import com.littlesteps.insight.utils.WebUtils;

@Controller
public class MainController {
 
	@Autowired
	UserMasterRepository repo;
	
    /*@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", "Welcome");
        model.addAttribute("message", "This is welcome page!");
        return "welcomePage";
    }
 
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(Model model, Principal principal) {
         
        User loginedUser = (User) ((Authentication) principal).getPrincipal();
 
        String userInfo = WebUtils.toString(loginedUser);
        model.addAttribute("userInfo", userInfo);
         
        return "adminPage";
    }
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model) {
 
        return "loginPage";
    }
 
    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage(Model model) {
        model.addAttribute("title", "Logout");
        return "logoutSuccessfulPage";
    }
 
    @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
    public String userInfo(Model model, Principal principal) {
 
        // (1) (en)
        // After user login successfully.
        // (vi)
        // Sau khi user login thanh cong se co principal
        String userName = principal.getName();
 
        System.out.println("User Name: " + userName);
 
        User loginedUser = (User) ((Authentication) principal).getPrincipal();
 
        String userInfo = WebUtils.toString(loginedUser);
        model.addAttribute("userInfo", userInfo);
 
        return "userInfoPage";
    }
 
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {
 
        if (principal != null) {
            User loginedUser = (User) ((Authentication) principal).getPrincipal();
 
            String userInfo = WebUtils.toString(loginedUser);
 
            model.addAttribute("userInfo", userInfo);
 
            String message = "Hi " + principal.getName() //
                    + "<br> You do not have permission to access this page!";
            model.addAttribute("message", message);
 
        }
 
        return "403Page";
    }*/
    
    @RequestMapping(value= {"/", "/tiles", "/home", "/logoutSuccessful"}, method=RequestMethod.GET)
	public ModelAndView home(Model model, HttpServletRequest request, @RequestParam(name="logged-out", required=false) String loggedOut) {
    	if(loggedOut != null && loggedOut.length() > 0) {
    		model.addAttribute("logged-out-okay", "User logged out successfully!");
    	}
		return new ModelAndView("app.homepage", model.asMap());
	}
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model) {
 
        return "login";
    }

    @RequestMapping(value = "/createUser", method = RequestMethod.GET)
    public String createUser(Model model) {
    	
    	return "createUser";
    }
    
    @RequestMapping(value = "/createStudent", method = RequestMethod.GET)
    public String createStudent(Model model) {
    	
    	return "createStudent";
    }
    
    @RequestMapping(value = "/createClass", method = RequestMethod.GET)
    public String createClass(Model model) {
    	
    	return "createClass";
    }
    
    @RequestMapping(value = "/reports", method = RequestMethod.GET)
    public String generateReports(Model model) {
    	
    	return "reports";
    }
    
    
    @RequestMapping(value = "/gradesandattendance", method = RequestMethod.GET)
    public String manageGradesAndAttendance(Model model) {
    	
    	return "gradesandattendance";
    }
    
    
    @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
    public String userInfo(Model model, Principal principal) {
    	 User loginedUser = (User) ((Authentication) principal).getPrincipal();
    	 
         String userInfo = WebUtils.toString(loginedUser);
         model.addAttribute("userInfo", userInfo);
        return "userInfo";
    }
    
    @RequestMapping(value = "/contactUs", method = RequestMethod.GET)
    public String contactUs(Model model, Principal principal) {
    	return "contact.us";
    }

    @RequestMapping(value = "/contactSysAdmin", method = RequestMethod.GET)
    public String contactSysAdmin(Model model, Principal principal) {
    	return "contactSysAdmin";
    }
    
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {
 
        if (principal != null) {
            User loginedUser = (User) ((Authentication) principal).getPrincipal();
 
            String userInfo = WebUtils.toString(loginedUser);
 
            model.addAttribute("userInfo", userInfo);
 
            String message = "Hi " + principal.getName() //
                    + "<br> You do not have permission to access this page!";
            model.addAttribute("message", message);
 
        }
 
        return "403Page";
    }
    
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(Model model, Principal principal) {
         
        User loginedUser = (User) ((Authentication) principal).getPrincipal();
 
        String userInfo = WebUtils.toString(loginedUser);
        model.addAttribute("userInfo", userInfo);
         
        return "adminPage";
    }
    
    /*@RequestMapping(value = "/findTest", method = RequestMethod.GET)
    @ResponseBody
    public String findTest(Model model) {
    	AppUserModel appmdl = new AppUserModel();
    	appmdl.setUserName("SOME1");
    	appmdl.setEncryptedPassword("UNENCPASSWRD");
    	appmdl.setEnabled(1L);
    	
    	this.repo.save(appmdl);
    	this.repo.findById(1L).ifPresent(user -> { System.out.println(user); });
    	return "SUCCESS";
    }*/
 
}