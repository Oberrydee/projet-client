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
                    url('https://i.ibb.co/jGqntSJ/waiters.png')0px 0px;
            }
            #char2 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')144px 0px;
            }
            #char3 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')288px 0px;
            }
            #char4 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')432px 0px;
            }
            #char5 {
                height: 48px; width: 48px;                 
                background: /*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')0px 192px;
            }
            #char6 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')144px 192px;
            }
            #char7 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')288px 192px;
            }
            #char8 {
                height: 48px; width: 48px;                 
                background:/*576 x 384*/
                    url('https://i.ibb.co/jGqntSJ/waiters.png')432px 192px;
            }
        </style>
        <script>
            var timeID; //we will use this variable to clear the setInterval()
            function updateCharacter(position){
                   
                const  interval = 1000; //100 ms of interval for the setInterval()
                timeID = setInterval( () => {
                    document.getElementById("loading_image")
                             .style.backgroundPosition =
                             position;   
                    }, interval);
            }
            function loadingAnimation(object,x,y){
                var    position ; //start position for the image slicer
                const  interval = 100; //100 ms of interval for the setInterval()

                var iter = 0;
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
                    object.style.backgroundPosition = position;   
                    }, interval);
             
            }
            function stopAnimation(object, position){
                object.style.backgroundPosition = position;
            }
            function submit_0_0(){
                document.getElementById('submit_0_0').click();
            }            function submit_144_0(){
                document.getElementById('submit_144_0').click();
            }function submit_288_0(){
                document.getElementById('submit_288_0').click();
            }function submit_432_0(){
                document.getElementById('submit_432_0').click();
            }function submit_0_192(){
                document.getElementById('submit_0_192').click();
            }function submit_144_192(){
                document.getElementById('submit_144_192').click();
            }function submit_288_192(){
                document.getElementById('submit_288_192').click();
            }function submit_432_192(){
                document.getElementById('submit_432_192').click();
            }
            function selectCharacter(object, x, y){
                sessionStorage.setItem([x,y]);
                
            }
           // loadingAnimation()
           
           setInterval(() => {
               tmp = document.getElementById("char"+1);
               loadingAnimation(tmp,0,0);
               tmp = document.getElementById("char"+5);
               loadingAnimation(tmp,0,192);
           },500);
           setInterval(() => {
               tmp = document.getElementById("char"+2);
               loadingAnimation(tmp,144,0);
               tmp = document.getElementById("char"+6);
               loadingAnimation(tmp,144,192);
           },400);
           setInterval(() => {
               tmp = document.getElementById("char"+3);
               loadingAnimation(tmp,288,0);
               tmp = document.getElementById("char"+7);
               loadingAnimation(tmp,288,192);
           },300);
           setInterval(() => {
               tmp = document.getElementById("char"+4);
               loadingAnimation(tmp,432,0);
               tmp = document.getElementById("char"+8);
               loadingAnimation(tmp,432,192);
           },400);
        </script>
    </head>
    <body>
        <h1>Choisissez votre avatar</h1>
        <div id='char_box'>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=0,0 hidden>
                <p onclick='submit_0_0()'id="char1" name = 'coord' 
                   > </p>
                <input id = 'submit_0_0' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=144,0 hidden>
                <p onclick='submit_144_0()'id="char2" name = 'coord' > </p>
                <input id = 'submit_144_0' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=288,0 hidden>
                <p onclick='submit_288_0()'id="char3" name = 'coord'  > </p>
                <input id = 'submit_288_0' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=432,0 hidden>
                <p onclick='submit_432_0()'id="char4" name = 'coord'> </p>
                <input id = 'submit_432_0' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=0,192 hidden>
                <p onclick='submit_0_192()'id="char5" name = 'coord' > </p>
                <input id = 'submit_0_192' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=144,192 hidden>
                <p onclick='submit_144_192()'id="char6" name = 'coord'  > </p>
                <input id = 'submit_144_192' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=288,192 hidden>
                <p onclick='submit_288_192()'id="char7" name = 'coord'> </p>
                <input id = 'submit_288_192' type ='submit' hidden/>
            </form>
        </div>
        <div id="char_div" >
            <form action="games" method="post">
                <input name = 'coord' value=432,192 hidden>
                <p onclick='submit_432_192()'id="char8" name = 'coord'  > </p>
                <input id = 'submit_432_192' type ='submit' hidden/>
            </form>
        </div>
        </div>
             <p id = 'r'></p>
        
        
    </applet>
   <!-- <iframe
 style="width: 100%; height: 550px; overflow: hidden;"
 src="https://dbapp-test.herokuapp.com/home"
 scrolling="no">-->
</iframe>
    </body>
</html>
