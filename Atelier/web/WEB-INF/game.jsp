<%-- 
    Document   : game
    Created on : 26 avr. 2021, 13:28:20
    Author     : ADZOH-VINYO DIANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game</title>
        <style>
            #loading_image {
                height: 48px; 
                width: 48px; 
                
                background: 
                    /*url('https://i.ibb.co/9tvL2Wq/Pik-Png-com-loading-png-985193.png')
                    */
                    /*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')0px 0px;
            }
        </style>
        <script>
            var timeID; //we will use this variable to clear the setInterval()
            function updateCharacter(position){
                   
                const  interval = 100; //100 ms of interval for the setInterval()
                timeID = setInterval( () => {
                    document.getElementById("loading_image")
                             .style.backgroundPosition =
                             position;   
                    }, interval);
            }
            function loadingAnimation(){
                var    position ; //start position for the image slicer
                const  interval = 100; //100 ms of interval for the setInterval()

                var iter = 0;
                var x_0y_0 = `0px 0px`; 
                var x_48y_0 = `-48px 0px`; 
                var x_96y_0 = `-96px 0px`;
                timeID = setInterval( () => {
                    switch(iter){
                        case 0: 
                            position = x_0y_0;
                            iter++;
                            break;
                        case 1: 
                            position = x_48y_0;
                            iter++
                            break;
                        case 2: 
                            position = x_96y_0;
                            iter = 0;
                            break;
                    }
                    document.getElementById("loading_image")
                             .style.backgroundPosition =
                             position;   
                    }, interval);
             
                    
                /*
                timeID = setInterval( () => {
                    //width: 2256 x height: 752`-188px 0px` ;
                     document.getElementById("loading_image")
                             .style.backgroundPosition =
                             `-`+x_position+`px `+y_position+`px` ; 
                     end_of_row++;
                    if (x_position < 576)
                    { x_position += 48;}
                    //we increment the position by 256 each time
                    else
                    { 
                        x_position = 0;
                    }
                    
                    if(end_of_row =>3) y_position+=48;
                    //reset the position to 256px, once position exceeds 1536px
                }, interval);*/
            }
            loadingAnimation()
        </script>
    </head>
    <body>
        <h1>Game</h1>
        <div id="loading_div">
            <p id="loading_image"></p>
             <p id = 'r'></p>
        </div>
        <input id ="test" hidden="true"/>
        
        
    </applet>
   <!-- <iframe
 style="width: 100%; height: 550px; overflow: hidden;"
 src="https://dbapp-test.herokuapp.com/home"
 scrolling="no">-->
</iframe>
    </body>
</html>
