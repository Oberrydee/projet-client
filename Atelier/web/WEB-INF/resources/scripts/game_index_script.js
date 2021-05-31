/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
        object
                 .style.backgroundPosition =
                 position;   
        }, interval);

}
function stopAnimation(object, position){
    object
                 .style.backgroundPosition =
                 position;
}
function submit(){
    document.getElementById('submit').click();
}
function selectCharacter(object, x, y){
    window.location.replace("hhttp://localhost:8080/atelier/game?x=144&y=0")
}
// loadingAnimation()

