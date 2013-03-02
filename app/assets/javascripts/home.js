//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
$(document).ready(function () {
 lol();
}); 

function lol() {
  var svg = document.getElementById('sine_wave').children[0];
  var origin = { //origin of axes
    x: 100,
    y: 100
  };

  var amplitude = 10; // wave amplitude
  var rarity = 1; // point spacing
  var freq = 0.1; // angular frequency
  var phase = 20; // phase angle

  for (var i = -100; i < 1000; i++) {
    var line = document.createElementNS("http://www.w3.org/2000/svg", "line");
    ///var line = $('line').first().clone();   
    //line = line[0];
    line.setAttribute('x1', (i - 1) * rarity + origin.x);
    line.setAttribute('y1', Math.sin(freq * (i - 1 + phase)) * amplitude + origin.y);

    line.setAttribute('x2', i * rarity + origin.x);
    line.setAttribute('y2', Math.sin(freq * (i + phase)) * amplitude + origin.y);

    line.setAttribute('style', "stroke:black;stroke-width:2;");
    
    svg.appendChild(line);
  } 
}
