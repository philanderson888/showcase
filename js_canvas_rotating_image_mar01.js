$(function() {
    var i, points = [];
    
    wirelib.initWithCanvas($("#canvas")[0]);
    
    for(i = 0; i < 20; i += 1) {
        points.push(Math.random() * 500 - 250,
                    -400 + Math.random() * 500 - 250,
                    Math.random() * 500 - 250);
    }
    wirelib.addLine(points);
    
    wirelib.addBox(0, 0, 0, 300, 300, 300);
    
    wirelib.addCircle(-200, 400, 0, 200, 32);
    wirelib.addRect(200, 400, 0, 400, 250);
    
    wirelib.loop(24, function() {
        wirelib.rotateY(0.01);
        wirelib.draw();
    });

});

