var pictureIndex = 1;
displayImage(pictureIndex);

function plusDivs(n) {
  displayImage(pictureIndex += n);
}

function displayImage(n) {
  var i;
  var x = document.getElementsByClassName("slideshow");
  if (n < 1) {pictureIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  if (n > x.length) {pictureIndex = 1}
  x[pictureIndex-1].style.display = "block";
  }