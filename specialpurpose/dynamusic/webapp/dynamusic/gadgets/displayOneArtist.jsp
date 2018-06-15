<h3>Details of artist - ${artist.artistName} </h3>
 
 
 
 <div class='row'>
 <div class='col-sm-6'>
  ${artist.description} 
 </div>
 <div  class='col-sm-6'> 
 <img src='${artist.photoURL}'/>
 </div>
 </div>
 
 <div class=row'>
  <div class='col-sm-6'>
 <a href='manageArtist?id=${artist.id}&type=GENRE&action=update'>Edit Artist</a>
 <a href='manageArtist?id=${artist.id}&type=GENRE&action=remove'>Remove Artist</a>
 </div>
 </div>