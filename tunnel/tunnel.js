var s1;
var squares = []
var i = 0;
function setup() {
    createCanvas(window.innerWidth, window.innerHeight);
    s1 = new Square();
    squares.push(s1)
}

function draw() {
    squares.forEach(s => {
        s.grow()
        s.display()
    })

    i++;
    if(i == 100) {
        i = 0;
        s = new Square();
        squares.push(s)
        console.log("push")
        console.log(squares)
    }
    else if(squares.length == 30) {
        squares.shift()
        console.log("pop")
        console.log(squares)
    }
}

function Square() {
    this.x = windowWidth/2;
    this.y = windowHeight/2;
    this.dimension = 1;

    this.grow = function() {
        this.dimension++;
    };

    this.display = function() {
        stroke(0, 100, 255);
        strokeWeight(10);
        rectMode(CENTER);
        circle(this.x, this.y, this.dimension);
    };
}

