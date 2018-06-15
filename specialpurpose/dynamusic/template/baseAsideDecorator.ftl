<h4>base aside Decorator</h4>

 ${decoratedContent.setSortOrder("caSequenceNum")}
 

 
  


 <#if decoratedContent.subcontent_all??>
 
 
 <#list decoratedContent.subcontent_all as oneContent>
  <div class='row'>
 ${oneContent}  
  </div>
 </#list>

 
 <#else>
 No decorated content
 
 </#if>

 
 