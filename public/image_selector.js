//if jquery isn't defined, load it
if (window.jQuery === undefined) {
  var script = document.createElement("script");
  script.src = "//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js";
  document.getElementsByTagName("head")[0].appendChild(script);
}

if (window.jQuery.ui === undefined) {
  var ui_script = document.createElement("script");
  ui_script.src = "//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js";
  document.getElementsByTagName("head")[0].appendChild(ui_script);
}


//scrape page for images that have a width greater than 220 and height greater than 100
var images  = jQuery('img');
var large_images = [];
var pattern = new RegExp("^(http|https)");
for (var i=0;i<images.length;i++){
  if ((images[i].width > 200) && (images[i].height > 100))
    if (pattern.test(images[i].src)) 
      large_images.push(images[i].src);
  if (large_images.length > 9)
    break;
}

//create a listener for when iframe closes
window.onmessage = function(event) {
  if (event.data === "closed") {
    location.reload();
  }
};
//create an iframe and load the src page in the iframe
var images_param = JSON.stringify(large_images);
modal = document.createElement('iframe');
modal.src = "http://local.host:3000/pages/image_picker?images=" + images_param;
modal.setAttribute('style', 'border:3px solid;height:650px;position:fixed;left:25%;top:50px;width:50%;z-index:2000;'); 
modal.id= 'modal';
document.body.appendChild(modal);

