//1.8 finished
function draw(n){
    let text = "";
    let z = 0;
        for (let i = 0; i < n; i++){
            for (let j = 1; j <= 1; j++ )
            {
                  //text += j;
                  text += z;
                  z+=2;
            }
                 text += "\n";
        }
        console.log(text);
    }
    draw(2);
    draw(3);
    draw(4);


