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
            }
            #char_box{
                display: inline ;
            }
            #char1 {
                height: 48px; 
                width: 48px;                 
                background: 
                    /*url('https://i.ibb.co/9tvL2Wq/Pik-Png-com-loading-png-985193.png')
                    */
                    /*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')${character_x}px ${character_y}px;
            }
        </style>
         <script type="text/javascript" src="https://rawgithub.com/craftyjs/Crafty/release/dist/crafty-min.js"></script>
        <script>
            function loadingAnimation(object,x,y){
                var    position ; //start position for the image slicer
                const  interval = 100; //100 ms of interval for the setInterval()

                var iter = 0;
                
                document.getElementById("r").innerHTML = "${character_x},${character_y}"
                
                var x_0y_0 = x+`px `+y+`px`; 
                tmp = x-48;
                var x_48y_0 = ``+tmp+`px -`+y+`px`;
                tmp = x-96 ;
                var x_96y_0 = ``+tmp+`px -`+y+`px`;
                timeID = setInterval( () => {
                    switch(iter){
                        case 0: 
                            position = x_0y_0;
                            iter++;
                            break;
                        case 1: 
                            position = x_48y_0;
                            iter++;
                            break;
                        case 2: 
                            position = x_96y_0;
                            iter = 0;
                            break;
                    }
                    object
                             .style.backgroundPosition =
                             position;   
                    }, interval);
             
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
            window.onload = function(){/*
                var cnv = document.getElementById("canvas"); /*
                cnv.width = window.width; 
                cnv.height = window.height; 
                Crafty.init(); 
                Crafty.canvas(cnv); */
        
                Crafty.init(500,350, document.getElementById('canvas'));
                Crafty.sprite(48,48, "https://i.ibb.co/jGqntSJ/waiters.png", {
                    player:[0,0]
                });
            var player = Crafty.e("2D,canvas, player"); 
            };
            function move(object, x,y){
                object.style.backgroundPosition = x+`px `+y+`px`; 
            }
        </script>
    </head>
    <body>
        <h1>Game scene</h1>
        
        <div id="char_div" 
             onmouseenter ="loadingAnimation(this
             ,${character_x},${character_y})">
            <p id="char1" 
               ></p>
        </div>
        <p>test</p>
        <canvas id ="canvas">
  Désolé, votre navigateur ne prend pas en charge &lt;canvas&gt;.</canvas>
        
             <p id = 'r'></p>
    </body>
</html>
