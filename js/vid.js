/*!
Javascript for Video Player
 */
var myvid = document.getElementById('myvideo');
var myvids = [
  "vid/Tendo.mp4", 
  "vid/HD.mp4",
  "vid/Yugo.mp4"
  ];
var activeVideo = 0;

myvid.addEventListener('ended', function(e) {
  // update the active video index
  activeVideo = (++activeVideo) % myvids.length;

  // update the video source and play
  myvid.src = myvids[activeVideo];
  myvid.play();
});