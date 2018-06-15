<h4>base MainBody Decorator</h4>

 ${decoratedContent.setSortOrder("caSequenceNum")}
 
   <#--    ${decoratedContent.setStatusFilter("CTNT_PUBLISHED")} --> <#-- uncomment this to get only the content whose state is published -->



 <#if decoratedContent.subcontent_all??>
 
 
 <#list decoratedContent.subcontent_all as oneContent>
  <div class='row'>
 ${oneContent}  
  </div>
 </#list>

 
 <#else>
 No decorated content
 
 </#if>

 
 