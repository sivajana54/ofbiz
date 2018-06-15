<!--displaying the artist details -->


<h3>Details of - <#if artist.artistName??>${artist.artistName}</#if></h3>
 
 
 
 <div class='row'>
 <div class='col-sm-6'>
 <#if artist.description??>${artist.description}</#if>
 </div>
 <div  class='col-sm-6'> 
 <#if artist.photoURL??><img src='${artist.photoURL}'   class='img-rounded'/>
 <#else/>
 
 No Image for this artist
 

 
 </#if>
 </div>
 </div>
 
 <div class=row'>
  <div class='col-sm-6'>
 <a href='manageArtist?id=${artist.id}&type=GENRE&action=update'>Edit Artist</a>
 <a href='manageArtist?id=${artist.id}&type=GENRE&action=remove'>Remove Artist</a>
 </div>
 
 <div>
 <h3>Albums for this artist</h3>
 
 
 
 
 <a href='<@ofbizUrl>manageAlbum</@ofbizUrl>'>Add Album</a>
 </div>
 
 
 
 </div>