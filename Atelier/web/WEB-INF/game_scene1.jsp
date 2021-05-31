<%-- 
    Document   : game_scene1
    Created on : 30 mai 2021, 12:07:22
    Author     : ADZOH-VINYO DIANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #char_div{
                display: inline ;
                position: absolute;
                width: 500px;
                height: 500px;
                background-color: grey;
            }
            #char_box{
                display: inline ;
            }
            #char1 {
                position:absolute;
                size: 100%;
                height: 48px; 
                width: 48px;   
                top: 225px; 
                right:  225px; 
                background: 
                    /*url('https://i.ibb.co/9tvL2Wq/Pik-Png-com-loading-png-985193.png')
                    */
                    /*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')${character_x}px ${character_y}px;
            }
        </style>
         <script type="text/javascript" src="https://rawgithub.com/craftyjs/Crafty/release/dist/crafty-min.js"></script>
        <script>
            document.onkeydown = checkKey;
            var direction = "";
            var y_position = 225; 
            var x_position = 225; 
            var position; 
            var min_x_axis = -500; 
            var max_x_axis = 0; 
            var min_y_axis = -500; 
            var max_y_axis = 0; 
            var iter = 1;
            function checkKey(e) {

                e = e ||  window.event;
                var char_div = document.getElementById("char1");
                var char_div_style = document.getElementById("char1").style;
                
    e.preventDefault();
                if (e.keyCode == '38') {
                    // up arrow 
                    moveInDirection("up",char_div);
                }
                else if (e.keyCode == '40') {
                    // down arrow
                    moveInDirection("down",char_div);
                }
                else if (e.keyCode == '37') {
                   // left arrow
                    moveInDirection("left",char_div);
               }
                else if (e.keyCode == '39') {
                   // right arrow
                    moveInDirection("right",char_div);
                }
              
            }
            window.onload = function(){
                timeID = setInterval( checkKey(), 0.1);
            };            
            setInterval( () => {
                updatePosition(document.getElementById("char1"))
            }, 0.1);
            function updatePosition(object,position){
                object.style.top = y_position+"px";
                object.style.right = x_position+"px";
                object.style.backgroundPosition = (
                        position === null || position === "" ? 
                object.style.backgroundPosition :  position); 
            }
            function moveInDirection(direction_change, object){
                var position, position_x, position_y; 
                switch(direction_change){
                    case 'down': 
                        position_x = ${character_x};
                        position_y =  ${character_y};
                        break; 
                    case 'up': 
                        position_x = ${character_x};
                        position_y = parseInt(144+${character_y});
                        break; 
                    case 'left': 
                        position_x = ${character_x};
                        position_y =  parseInt(48+${character_y});
                        break; 
                    case 'right': 
                        position_x = ${character_x};
                        position_y =  parseInt(96+${character_y});
                        break; 
                    default:
                        position_x = ${character_x};
                        position_y =  ${character_y};
                        break;
                }
                  
                document.getElementById("rt").innerHTML = 
                        "CHECKPOINT 1 x="+position_x+",y="+position_y;

                direction = direction_change; 
                position = position_x+`px `+position_y+`px`;
                object.style.backgroundPosition = position;
                move(object, position_x, position_y);
            }
            function move(object, x, y){
                const  interval = 100; //100 ms of interval for the setInterval()
                switch(direction){
                    case 'down': 
                        if(-y_position>= min_y_axis+60) y_position = y_position+5;
                        updatePosition(object, newState(x,y));
                        break; 
                    case 'up': 
                        if (-y_position<=max_y_axis-10) y_position = y_position-5;
                        updatePosition(object, newState(x,y));
                        break; 
                    case 'left': 
                        if(-x_position>= min_x_axis+55)x_position = x_position+5;
                        updatePosition(object, newState(x,y));
                        break; 
                    case 'right': 
                        if (-x_position<=max_x_axis-5) x_position = x_position-5;
                        updatePosition(object, newState(x,y));
                        break;  
                    default:
                        updatePosition(object, newState(x,y));
                        break;  
                }
            }
            function newState( x, y){
                var    position ; 
                var x_0y_0 = ``+x+`px -`+y+`px`; 
                tmp = x-48;
                var x_48y_0 = ``+tmp+`px -`+y+`px`;
                tmp = x-96 ;
                var x_96y_0 = ``+tmp+`px -`+y+`px`;
                switch(iter){
                    case 1: 
                        position = x_48y_0;
                        iter++;
                        break;
                    case 2: 
                        position = x_96y_0;
                        iter ++;
                        break;
                    case 3: 
                        position = x_48y_0;
                        iter++;
                        break;
                    case 4: 
                        position = x_0y_0;
                        iter = 1;
                        break;
                };
                
                document.getElementById("r").innerHTML = 
                        "CHECKPOINT 1 x="+x+",y="+y;
                return position;
            }
            function GetURLParameter(sParam)
            {
                var sPageURL = window.location.search.substring(1);
                var sURLVariables = sPageURL.split('&');
                for (var i = 0; i < sURLVariables.length; i++) 
                {
                    var sParameterName = sURLVariables[i].split('=');
                    if (sParameterName[0] == sParam) 
                    {
                        return sParameterName[1];
                    }
                }
            } 
            //loadingAnimation(this,${character_x},${character_y})
        </script>
    </head>
    <body>
        <h1>Game scene</h1>
        
        <div id="char_div" 
             onmouseenter ="">
        <canvas id ="char1">
  Désolé, votre navigateur ne prend pas en charge &lt;canvas&gt;.</canvas>
        </div>
        <p>test</p>
        <div>
             <p id = 'r'></p>
             <p id = 'rt'></p>
        </div>
    </body>
</html>
