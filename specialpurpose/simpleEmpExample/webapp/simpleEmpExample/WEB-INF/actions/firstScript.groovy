import java.util.*;
import java.util.logging.Level
import java.util.logging.Logger

import org.apache.logging.log4j.LogManager

import groovy.util.logging.Log4j
 

myReqParam=parameters.show;
context.inputLength=myReqParam.length();
context.outputValue="output value";
parameters.inputLength=myReqParam.length();

//System.out.println("this is from groovy")
 
//no need to use JDK logger. ofbiz uses log4j OOTB

//Logger logger=Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

//logger.log(Level.INFO, "this is an info message")

//logger.log(Level.FINE, "this is ONE FINE MESSAGE")

org.apache.logging.log4j.Logger logger2=LogManager.getLogger("firstScript")

 

logger2.debug("a debug message from log4j");

logger2.trace("a trace message")

logger2.info("an info message")

logger2.error("this is an error message")