<form method="post"  action="<@ofbizUrl>createEmp</@ofbizUrl>"     id="createEmpFormFTL"  class="basic-form" onsubmit="javascript:submitFormDisableSubmits(this)" name="createEmpFormFTL">
  <table cellspacing="0" >
  <tr>
  <td class="label">
<label for="createEmpForm_empNo"  class="label-default" id="createEmpForm_empNo_title">Emp No</label>  </td>
  <td>
<input type="text" name="empNo"   class="label-default" 
         size="20"     maxlength="20"             id="createEmpForm_empNo"                    require
/>  
  
  </td>
  </tr>
  <tr>
  <td class="label">
<label for="createEmpForm_empTitle"  class="label-default" id="createEmpForm_empTitle_title">Emp Title</label>  </td>
  <td>
<input type="text" name="empTitle"   class="label-default" 
         size="20"     maxlength="20"             id="createEmpForm_empTitle"                    require
/>  
  
  </td>
  </tr>
  <tr>
  <td class="label">
<label for="createEmpForm_empName"  class="label-default" id="createEmpForm_empName_title">Emp Name</label>  </td>
  <td>
<input type="text" name="empName"   class="label-default" 
         size="40"     maxlength="60"             id="createEmpForm_empName"                    require
/>  
  
  </td>
  </tr>
  <tr>
  <td class="label">
<label for="createEmpForm_job"  class="label-default" id="createEmpForm_job_title">Job</label>  </td>
  <td>
<input type="text" name="job"   class="label-default" 
         size="40"     maxlength="60"             id="createEmpForm_job"                    require
/>  
  
  </td>
  </tr>
  <tr>
  <td class="label">
<label for="createEmpForm_salary"  class="label-default" id="createEmpForm_salary_title">Salary</label>  </td>
  <td>
<input type="text" name="salary"   class="label-default" 
         size="6"                 id="createEmpForm_salary"                    require
/>  
  
  </td>
  </tr>
  <tr>
  <td class="label">
<label for="createEmpForm_dept"  id="createEmpForm_dept_title">Department</label>  </td>
  <td>
  <span class="ui-widget">
   
   <select name='dept'>
   <#list departments  as dept>
<option value="${dept.deptNo}" >${dept.deptName}</option>
</#list>
      </select>
   
  </span>

  
  </td>
  </tr>
  <tr>
  <td class="label">
&nbsp;  </td>
  <td colspan="4">
    <input type="submit"   

     name="submitButton" value="click here"
    
        />
  
  </td>
  </tr>
  </table>
</form>
    <script type="text/javascript">
      jQuery("#createEmpFormFTL").validate({
        submitHandler:
          function(form) {
            form.submit();
          }
      });
    </script>