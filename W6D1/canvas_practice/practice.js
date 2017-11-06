document.addEventListener("DOMContentLoaded", function(){

    const canvas = document.getElementById("mycanvas");
    canvas.height = 500;
    canvas.width = 500;
    const ctx = canvas.getContext("2d");


    ctx.fillStyle = 'red';
    ctx.fillRect(10,10,100,100);


    ctx.beginPath();
    ctx.arc(75, 75, 50, 0, 2 * Math.PI);

    ctx.strokeStyle = 'blue';

    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = "green";
    ctx.fill();




});
