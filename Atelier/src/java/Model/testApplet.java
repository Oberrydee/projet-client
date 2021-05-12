/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ADZOH-VINYO DIANA
 */

import java.awt.*; 
import javax.swing.*; 

public class testApplet extends JApplet implements Runnable{
    
    Thread thread = new Thread(this); 
    boolean running = true; 
    Player p; 

    @Override
    public void init(){
        setSize(400,400); 
        p = new Player(); 
    }
    @Override
    public void start(){thread.start();}
    @Override
    public void destroy(){}
    @Override
    public void stop(){}
    @Override
    public void run(){
        while(running){
            repaint(); 
            p.update(this);
            try{
              Thread.sleep(20);
            }
            catch(InterruptedException e){
                System.out.println("ERROR HAS OCCURED");
            }
        }
    }
    public void paint(Graphics g){
        p.paint(g); 
    }
    
}
