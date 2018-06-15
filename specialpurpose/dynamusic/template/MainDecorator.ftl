<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

 <h3>Main Decorator</h3>
  
 <#-- 

${(decoratedContent.subcontent.htmlHead)?default((thisContent.subcontent.htmlHead)!)}
${(decoratedContent.subcontent.header)?default((thisContent.subcontent.header)!)}

${decoratedContent}

${(decoratedContent.subcontent.footer)?default((thisContent.subcontent.footer)!)}
 -->
 ${decoratedContent.setSortOrder("caSequenceNum")}
 
  ${decoratedContent.setMapKeyFilter("aside")}
 
 
 
 <div class="col-sm-4 col-md-4">
 <div class='row'>
 <#if decoratedContent.subcontent_all??>
  
 <#list decoratedContent.subcontent_all as oneContent>
 
 ${oneContent} <BR>
 </#list>
 
 <#else>
 No  content for aside
 
 </#if>
 </div>
 </div>
 
 
  ${decoratedContent.setSortOrder("caSequenceNum")}
 
  ${decoratedContent.setMapKeyFilter("mainBody")}
 
  <div class="col-sm-8 col-md-8">
  <div class='row'>
 <#if decoratedContent.subcontent_all??>
  
 <#list decoratedContent.subcontent_all as oneContent>
 
 ${oneContent.getClass()} <BR>
 </#list>

 
 <#else>
 No  content for main body
 
 </#if>
 
 </div>
 </div>
 