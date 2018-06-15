 
<html>
  <head>
    <title>AAAAAAA${uiLabelMap.get(titleProperty)}</title>
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
  <body data-offset="125">
    <h4 align="center"><!--<img src='../images/vamEmp_logo.png'/>--> <img src='/myimages/vamEmp_logo.png'/></h4>
    <div class="container menus" id="container">
      <div class="row">
        <div class="col-sm-12">
          <ul id="page-title" class="breadcrumb">
            <li>
                <a href="<@ofbizUrl>main</@ofbizUrl>">${uiLabelMap.homeKey}</a>
            </li>
             <li>
                <a href="<@ofbizUrl>second</@ofbizUrl>">${uiLabelMap.secondKey}</a>
            </li>
            <li class="active"><span class="flipper-title">${StringUtil.wrapString(uiLabelMap[titleProperty])}...  </span></li>
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
          
          
          <h3>${uiLabelMap[pageName]}</h3>
 
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 header-col">
          <div id="main-content">
              <hr width='100%'/>
           