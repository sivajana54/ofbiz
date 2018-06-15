 
<html>
  <head>
    <title>  <#if uiLabelMap.get(titleProperty)??>${uiLabelMap.get(titleProperty)}</#if></title>
    <meta name="viewport" content="width=device-width, user-scalable=no"/>
    <#if webSiteFaviconContent?has_content>
      <link rel="shortcut icon" href="">
    </#if>
    <#list layoutSettings.styleSheets as styleSheet>
      <link rel="stylesheet" href="${StringUtil.wrapString(styleSheet)}" type="text/css"/>
    </#list>
    <#list layoutSettings.javaScripts as javaScript>
      <script type="text/javascript" src="${StringUtil.wrapString(javaScript)}"></script>
    </#list>
  </head>
  <body data-offset="125"  style="background: gray;">
    <h4 align="center"><!--<img src='../images/vamEmp_logo.png'/>--> <img src='/myimages/vamEmp_logo.png'/></h4>
    <div class="container menus" id="container">
      <div class="row">
        <div class="col-sm-12 col-md-12">
          <ul id="page-title" class="breadcrumb">
            <li>
                <a href="<@ofbizUrl>main</@ofbizUrl>"><#if uiLabelMap.homeKey??>${uiLabelMap.homeKey}</#if>></a>
            </li>
             <li>
                <a href="<@ofbizUrl>second</@ofbizUrl>">${uiLabelMap.secondKey}</a>
            </li>
            <li class="active"><span class="flipper-title"><#if uiLabelMap.get(titleProperty)??>${StringUtil.wrapString(uiLabelMap[titleProperty])}... </#if> </span></li>
            <li class="pull-right"> 
              <a href="<@ofbizUrl>logout</@ofbizUrl>" title="${uiLabelMap.CommonLogout}">${uiLabelMap.CommonLogout}</i></a>
            </li>
          </ul>
          <!--There are two notations to get the field value that has been set in the screen definition. The field values set are stored inside the uiLabelMap. At the same time, the resource keys defined in the resource bundle file, UiLabels.xml
          file is also stored in the uiLabelMap since that has been loaded using the <property-map> tag as shown below in the CommonScreens.xml.
          
          The keys defined in the XML file are accessed using the '.' notation, whereas the keys defined in the <set field=.....> tag are accessed using either the get method call or using [] brackets.
          see the title tag above and the pageName syntax below. At the same time, check the syntax of the fetching of 'secondKey' from the resourceBundle XML file.
          
               <property-map resource="CommonUiLabels" map-name="uiLabelMap" global="true"/>
  			<property-map resource="SimpleEmpExampleUiLabels" map-name="uiLabelMap" global="true"/>
  			
  			-->
                  <#if uiLabelMap.get(pageName)??>
          <h3>${uiLabelMap[pageName]}</h3>
          </#if>
 
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 header-col">
          <div id="main-content">
              <hr width='100%'/>
              
              
              <#escape x as x?html>
  <#if requestAttributes.errorMessageList?has_content><#assign errorMessageList=requestAttributes.errorMessageList></#if>
  <#if requestAttributes.eventMessageList?has_content><#assign eventMessageList=requestAttributes.eventMessageList></#if>
  <#if requestAttributes.serviceValidationException??><#assign serviceValidationException = requestAttributes.serviceValidationException></#if>
  <#if requestAttributes.uiLabelMap?has_content><#assign uiLabelMap = requestAttributes.uiLabelMap></#if>
  
  <#if !errorMessage?has_content>
    <#assign errorMessage = requestAttributes._ERROR_MESSAGE_!>
  </#if>
  <#if !errorMessageList?has_content>
    <#assign errorMessageList = requestAttributes._ERROR_MESSAGE_LIST_!>
  </#if>
  <#if !eventMessage?has_content>
    <#assign eventMessage = requestAttributes._EVENT_MESSAGE_!>
  </#if>
  <#if !eventMessageList?has_content>
    <#assign eventMessageList = requestAttributes._EVENT_MESSAGE_LIST_!>
  </#if>
  
   <#-- display the error messages -->
  <#if (errorMessage?has_content || errorMessageList?has_content)>
    <div>
      <#noescape><p class='mark'>${uiLabelMap.CommonFollowingErrorsOccurred}:</p></#noescape>
      <#if errorMessage?has_content>
        <p class='text-info'>${StringUtil.wrapString(errorMessage)}</p>
      </#if>
      
      <#if serviceValidationException?has_content>
      <p class='serv'>${StringUtil.wrapString(serviceValidationException)}</p>
      </#if>
      
      <#if errorMessageList?has_content>
        <#list errorMessageList as errorMsg>
          <p class='text-danger'>${StringUtil.wrapString(errorMsg)}</p>
        </#list>
      </#if>
    </div>
    
     <#if eventMessage?has_content || eventMessageList?has_content>
    <div>
       <#noescape><p class='mark'>${uiLabelMap.CommonFollowingOccurred}:</p></#noescape>
    <#if eventMessage?has_content>
      <p class='text-danger'>${StringUtil.wrapString(eventMessage)}</p>
    </#if>
    <#if eventMessageList?has_content>
      <#list eventMessageList as eventMsg>
        <p class='text-danger'>${StringUtil.wrapString(eventMsg)}</p>
      </#list>
    </#if>
  </div>
    </#if>
    
    
    
  </#if>
  
  
  </#escape>
              
           