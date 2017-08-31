$(document).on('click', '.artworkfirst', function(){
  $('.photosprofile').hide();
  $('.artworksprofile').show();
});

$(document).on('click', '.photofirst', function(){
  $('.photosprofile').show();
  $('.artworksprofile').hide();
});
