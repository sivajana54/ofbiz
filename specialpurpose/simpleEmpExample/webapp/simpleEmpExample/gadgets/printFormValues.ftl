<h2>Printing Form Submission Values</h2>

<BR> now printing the values of variables


<#if requestAttributes.output??><#assign output=requestAttributes.output></#if>

 ${output}
 
 <BR>
 
 <#if requestAttributes.allParams??><#assign allParams=requestAttributes.allParams></#if>

 ${allParams}