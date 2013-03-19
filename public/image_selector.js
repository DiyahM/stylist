var images  = jQuery('img');
var large_images = [];
for (var i=0;i<images.length;i++){
  if ((images[i].width > 200) && (images[i].height > 100))
    large_images.push(images[i].src);
}

console.log(large_images);
var images_param = JSON.stringify(large_images);
console.log("results " + large_images.toString());
modal = document.createElement('iframe');
modal.src = "http://local.host:3000/pages/image_picker?images=" + images_param;
modal.setAttribute('style', 'border:3px solid;height:650px;position:fixed;left:25%;top:20px;width:50%;z-index:2000;'); 
modal.className = 'modal';
document.body.appendChild(modal);

//window.open("http://local.host:3000/pages/image_picker","newwim","fullscreen=no,toolbar=no,status=no,resizable=no,width=350,height=550");

