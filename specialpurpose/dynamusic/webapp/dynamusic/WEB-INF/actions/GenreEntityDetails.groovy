import org.apache.ofbiz.base.util.Debug
import org.apache.ofbiz.entity.Delegator
import org.apache.ofbiz.entity.GenericValue
import org.apache.ofbiz.entity.condition.EntityExpr
import org.apache.ofbiz.entity.condition.EntityOperator

//sample groovy script to print all the Enumeration values for the GENRE Enumeration

condition = new EntityExpr("enumTypeId", EntityOperator.EQUALS,	"GENRE");

//findList(java.lang.String entityName, EntityCondition entityCondition, java.util.Set<java.lang.String> fieldsToSelect, java.util.List<java.lang.String> orderBy, EntityFindOptions findOptions, boolean useCache)


	genreValues = delegator.findList("Enumeration", condition, null, null,null,false);
	
	for(GenericValue gValue:genreValues) {
		Debug.logInfo(""+gValue.get("description"),"");
	}
context.genreValues=genreValues;

//the Form uses a entity-one tag to fetch an artist and sets it in the context with a variable by name artist and hence we are able to access the same here below.
//same way, our groovy script sets a variable in the context by name genreValues that can be accessed either in our form/screen widget or in our FTL templates.

Debug.logInfo("the selected artist is "+context.artist,"");

//genreValues=delegator.findList("Enumeration", null, null, null, null, false);