document.getElementById("1").innerText = "Hi";
let canvas1 = document.getElementById("canvas1");
canvas.height = 300;
canvas.width = 300;
let ctx = canvas1.getContex("2d");
let img = document.getElementById("picture_1");
ctx.drawImage(img, 100, 100);


