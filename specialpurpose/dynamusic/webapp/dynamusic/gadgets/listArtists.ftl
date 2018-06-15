<!--Listing artists -->
<h3>List of Artists</h3>

    <div class="list-group">
<#list artists as oneArtist> 



<a href="<@ofbizUrl>artistDetails</@ofbizUrl>?id=${oneArtist.id}"    class='list-group-item'> <span class="glyphicon glyphicon-file"></span><span><#if oneArtist.artistName??>${oneArtist.artistName}</#if> </span></a>

</#list>

</div>


 <a href='<@ofbizUrl>manageArtist</@ofbizUrl>?type=GENRE'>Add a New Artist</a>