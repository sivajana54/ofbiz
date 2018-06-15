 
 <table border='1'>
 
   <#list employees  as emp>
<tr>
<td>${emp.empNo}</td><td><a href='oneEmployee?empno=${emp.empNo}'>${emp.empName}</a></td><td>${emp.job}</td><td>${emp.salary}</td>

</tr>
</#list>
    