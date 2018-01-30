package kz.iitu.SuperEyesApp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javassist.NotFoundException;

@ControllerAdvice(basePackages= {"kz.iitu.SuperEyesApp.controller"})
public class ExceptionHandlingController {
	
	@ExceptionHandler(value=NotFoundException.class)
	public ModelAndView handleError(HttpServletRequest req, Exception ex) {

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("exception", ex);
	    mav.addObject("url", req.getRequestURL());
	    mav.setViewName("404");
	    return mav;
	}
	
	@ExceptionHandler(value=Exception.class)
	public String handleTypeMismatch(Exception ex, HttpServletRequest request) {
		
	    return "redirect:"+ "/";
	}
	
}
