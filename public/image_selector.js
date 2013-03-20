var images  = jQuery('img');
var large_images = [];
var pattern = new RegExp("^(http|https)");
for (var i=0;i<images.length;i++){
  if ((images[i].width > 200) && (images[i].height > 100))
    if (pattern.test(images[i].src)) 
      large_images.push(images[i].src);
}

window.onmessage = function(event) {
  if (event.data === "closed") {
    location.reload();
  }
};
var images_param = JSON.stringify(large_images);
modal = document.createElement('iframe');
modal.src = "http://local.host:3000/pages/image_picker?images=" + images_param;
modal.setAttribute('style', 'border:3px solid;height:650px;position:fixed;left:25%;top:50px;width:50%;z-index:2000;'); 
modal.id= 'modal';
document.body.appendChild(modal);




//window.open("http://local.host:3000/pages/image_picker","newwim","fullscreen=no,toolbar=no,status=no,resizable=no,width=350,height=550");

