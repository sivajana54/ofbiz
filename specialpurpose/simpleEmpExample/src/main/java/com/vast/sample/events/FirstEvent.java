package com.vast.sample.events;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.FastArrayList;
import org.apache.ofbiz.base.util.Debug;
import org.apache.ofbiz.base.util.UtilHttp;
import org.apache.ofbiz.entity.Delegator;
import org.apache.ofbiz.entity.GenericValue;
import org.apache.ofbiz.service.LocalDispatcher;

public class FirstEvent {
	
	public static final String module=FirstEvent.class.getName();
	
	public static String processFirstForm(HttpServletRequest request,HttpServletResponse response) {
		String result="success";
		 Delegator delegator = (Delegator) request.getAttribute("delegator");
	        LocalDispatcher dispatcher = (LocalDispatcher) request.getAttribute("dispatcher");
	        GenericValue userLogin = (GenericValue) request.getSession().getAttribute("userLogin");
		 List<String> errorMessages=new ArrayList();
		 
		 //always pass the component name as the last argument. otherwise, the log entry will contain the word 'NoModule'
		 
	        Debug.logInfo("inside the First Event  java class",module);
	       Debug.logInfo("the delegator object is - %s",module,new Object[]{delegator});
	        
	        String username=request.getParameter("username");
	        String age=request.getParameter("age");
	        boolean validationErrors=false;
	        if(username==null || username.length() <=3) {
	        	Debug.logError("username is very small - %s", module,username);
	        	errorMessages.add("username is very small");
	        	validationErrors=true;
	        }
	        int ageVal=-1;
	        try{
	        	ageVal=Integer.parseInt(age);	        	
	        }catch(NumberFormatException nfe) {
	        	Debug.logError("passed input not a valid number - %s",module, age);
	        	errorMessages.add("age is not a valid integer");
	        	validationErrors=true;
	        }
	        if(ageVal < 10 || ageVal > 80) {
	        	Debug.logError("age is not in valid range - %s", module,age);
	        	errorMessages.add("age is not in range");
	        	validationErrors=true;
	        }
	        
	        if(validationErrors) {
	        	request.setAttribute("_ERROR_MESSAGE_LIST_", errorMessages);
	        	Debug.logVerbose("there are validation errors. hence returning error",module);
	        	return "failure";
	        }
	        StringBuilder sb=new StringBuilder();
	        Formatter ftr=new Formatter(sb);
	        ftr.format("the input value is  %s and the age is %s",new Object[]{ username,age});
	        Debug.logInfo(sb.toString(), module);
	        request.setAttribute("output",sb.toString());
	        request.setAttribute("allParams", UtilHttp.getParameterMap(request));
	        
		return result;
		
	}

}
