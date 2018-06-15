import org.apache.ofbiz.base.util.Debug

//a helper script  to check whether it is update action or remove action for our dynamusic ManageArtistForm

passedAction=parameters.action
artist=context.artist

if(artist==null) {
	neededAction="create"
 
}else {
	if(passedAction.equals("update")) {
		neededAction="update"
	} else if (passedAction.equals("remove")) {
	 neededAction="remove"
	}
	
	
}
context.neededAction=neededAction
 Debug.logInfo("neeededAction is " + neededAction, "CheckActionGroovy")