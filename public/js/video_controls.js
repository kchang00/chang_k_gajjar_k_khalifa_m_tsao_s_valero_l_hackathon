(() => {
  console.log("working");

  const video = document.querySelector("video"),
    playButton = document.querySelector("#play-pause"),
    muteButton = document.querySelector("#mute"),
    fullScreenButton = document.querySelector("#full-screen"),
    timeBar = document.querySelector("#time-bar"),
    volumeBar = document.querySelector("#volume-bar"),
    videoOverlay = document.querySelector(".video-overlay");

  function loadVideo() {
    video.load();
    video.pause();
  }

  //function to displat rewind button when the video ended
  video.onended = function() {
    console.log("ended");
    playButton.src = `images/button-rewind.svg`;
  };

  function playPause() {
    if (video.paused == true) {
      videoOverlay.style.display = "none";
      video.play(); // Play the video
      playButton.src = `images/rounded-pause-button.svg`; // Update the button text to 'Pause'
    } else {
      video.pause(); // Pause the video
      playButton.src = `images/play_button.svg`; // Update the button text to 'Play'
    }

    //rewind the video
    if (video.onended == true) {
      video.play();
    }
  }

  //mute/unmute function
  function muteUnmute() {
    if (video.muted == false) {
      video.muted = true; // Mute the video
      volumeBar.value = 0; // Change the volume bar
      muteButton.src = `images/muted.svg`; // Change the mute button
    } else {
      video.muted = false; // Unmute the video
      volumeBar.value = video.volume; // Change the volume bar
      muteButton.src = `images/unmute.svg`; // Change the mute button
    }
  }

  function timeTracker() {
    var totalTime = video.duration * (timeBar.value / 100); // Calculate the new time
    video.currentTime = totalTime; // Update the video time
  }

  // Updates the timeBar slider as the video plays
  function timeUpdater() {
    var totalValue = (100 / video.duration) * video.currentTime; // Calculate the slider value
    timeBar.value = totalValue; // Update the slider value
  }

  // Used to pause timeBar when user is dragging handle, DOES NOT control play/pause button
  function videoPause() {
    video.pause();
  }

  function volumeChange() {
    video.muted = false; //unmute video
    video.volume = volumeBar.value; //change volume
    muteButton.src = `images/unmute.svg`; //change mute button

    if (volumeBar.value == 0) {
      muteButton.src = `images/muted.svg`; //change mute button if value = 0
    }
    // Update video volume
  }

  function fullScreen() {
    if (video.requestFullscreen) {
      video.requestFullscreen();
    } else if (video.mozRequestFullScreen) {
      video.mozRequestFullScreen(); // Fallback for Firefox
    } else if (video.webkitRequestFullscreen) {
      video.webkitRequestFullscreen(); // Fallback for Chrome and Safari
    }
  }

  // video event listeners
  window.addEventListener("load", loadVideo);

  // playing and pausing the video
  playButton.addEventListener("click", playPause);
  video.addEventListener("click", playPause);
  videoOverlay.addEventListener("click", playPause);

  //other video controls
  muteButton.addEventListener("click", muteUnmute);
  fullScreenButton.addEventListener("click", fullScreen);
  timeBar.addEventListener("change", timeTracker);
  video.addEventListener("timeupdate", timeUpdater);

  // pauses timebar when user is dragging handle
  timeBar.addEventListener("mousedown", videoPause);
  timeBar.addEventListener("mouseup", playPause);
  volumeBar.addEventListener("change", volumeChange);
})();

// DEV NOTES!

// ** There is a bug: the timeBar displays at half when the page loads.

// ** Use this to trigger a replay after video is finished - rewind the video + play it:
// video.currentTime = 0;

// ** Use this to exit fullscreen once video ended - replace hideLightbox:
// video.addEventListener('ended', hideLightbox);
