// 1.3 
function draw(n){
    let text = "";
        for (let i = 1; i <= n; i++){
            for (let j = 1; j <= n; j++ ){
                text += j;
            }
            text += "\n";
        }
        console.log(text);
    }
    draw(2);
    draw(3);
    draw(4);

    