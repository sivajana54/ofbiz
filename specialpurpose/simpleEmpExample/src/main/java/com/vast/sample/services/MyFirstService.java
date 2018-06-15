package com.vast.sample.services;

import java.util.Map;

import org.apache.ofbiz.base.util.Debug;
import org.apache.ofbiz.service.DispatchContext;
import org.apache.ofbiz.service.ServiceUtil;

public class MyFirstService {
	
	public static final String module =MyFirstService.class.getName();
	
	public static   Map  myFirstMethod(DispatchContext dctx,Map context) {
		
		Debug.logInfo("passed context is - %s", module,context.entrySet());
//		 Debug.logInfo("list of services are - %s", module,dctx.getAllServiceNames());
	Debug.logInfo("username is %s", module,context.get("username"));	 
 		
		Map resultMap=ServiceUtil.returnSuccess("service called successfully");
		return resultMap;
	}

}
