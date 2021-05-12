/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.awt.Color;
import java.awt.Graphics;

/**
 *
 * @author ADZOH-VINYO DIANA
 */
public class Player {
    private int x = 200;
    private int y = 200;
    private int radius = 20;
    
    public void update(testApplet tA){
    }
    public void paint(Graphics g){
        g.setColor(Color.BLUE);
        g.fillRect(x, y, radius*2, radius*2);
    }

}
