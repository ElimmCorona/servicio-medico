/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package factorial;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import static java.lang.Math.sin;
import java.math.*;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JButton;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
import javax.swing.border.EmptyBorder;


public class Ventana extends JFrame implements ActionListener {
    
    JTextField pantalla;
    JTextField pantallaFibo;
    JTextField pantallaFacto;
    
    JButton btni;
    JButton btnr;
    
    String Factorial;
    String Fibonachi;
    String operacion;
    double resultado;
    int x,y;
    
    JPanel panelNumeros, panelOperaciones;
    
    boolean nuevaOperacion = true;
    
    public Ventana (){
        super();
		setSize(500, 600);
		setTitle("");
		setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		setResizable(false);

		// Vamos a dibujar sobre el panel
		JPanel panel = (JPanel) this.getContentPane();
		panel.setLayout(null);

		pantalla = new JTextField("0", 20);
		pantalla.setBorder(new EmptyBorder(4, 4, 4, 4));
                pantalla.setBounds(150, 115, 150, 65);
		pantalla.setFont(new Font("Arial", Font.BOLD, 25));
		pantalla.setHorizontalAlignment(JTextField.RIGHT);
		pantalla.setBackground(Color.WHITE);
		panel.add(pantalla);
                
                pantallaFibo = new JTextField("Fibonachi", 20);
		pantallaFibo.setBorder(new EmptyBorder(4, 4, 4, 4));     
                pantallaFibo.setBounds(100, 215, 290, 65);
		pantallaFibo.setFont(new Font("Arial", Font.BOLD, 25));
		pantallaFibo.setHorizontalAlignment(JTextField.RIGHT);
		pantallaFibo.setEditable(false);
		pantallaFibo.setBackground(Color.WHITE);
		panel.add(pantallaFibo);
                
                
                pantallaFacto = new JTextField("Factorial", 20);
		pantallaFacto.setFont(new Font("Arial", Font.BOLD, 25));
                pantallaFacto.setBorder(new EmptyBorder(4, 4, 4, 4)); 
                pantallaFacto.setBounds(100, 315, 290, 65);
		pantallaFacto.setHorizontalAlignment(JTextField.RIGHT);
		pantallaFacto.setEditable(false);
		pantallaFacto.setBackground(Color.WHITE);
		panel.add(pantallaFacto);
                
                    
                btni = new JButton("iniciar");
                btni.setBounds(320, 50, 90, 55);
		btni.setForeground(Color.RED);
                btni.addActionListener(this);
                panel.add(btni);
                
                btnr = new JButton("reiniciar");
                btnr.setBounds(320, 115, 90, 55);
		btnr.setForeground(Color.RED);
                btnr.addActionListener(this);
                panel.add(btnr);
                
		validate();
    }
    
    
    private void operacionPulsado(String tecla) {
            int fibo=0;
        int facto=0;
		 if (tecla.equals("iniciar")) {
			fibo=Integer.parseInt(pantalla.getText());
                        facto=Integer.parseInt(pantalla.getText());
                        String Fibo= Fibonachic(fibo);
                        pantallaFibo.setText(Fibo);
                        
                        String Facto= Factorial(facto);
                        pantallaFacto.setText(Facto);
		} else  if (tecla.equals("reiniciar")) {
			pantalla.setText("0");
                        pantallaFibo.setText("Fibonachi");
                        pantallaFacto.setText("Factorial");
			nuevaOperacion = true;
		}

		nuevaOperacion = true;
	}
   
    
    private String Fibonachic(int numero){
          
                int num1=0;
                int num2=1; 
                int num3;  
                String Fibonachi = +num1+" ; "+num2;
                
                if(numero==0){
                    Fibonachi = ""+num1+"";                    
                }
                else{
                    if(numero==1){
                     Fibonachi = ""+num1+""; 
                    }
                    else{
    
                for(int i=2;i<numero;++i)
                {    
                 num3=num1+num2;    
                 Fibonachi += " ; "+num3+"";  
                 num1=num2;    
                 num2=num3;    
                }           
                    }
                }
                    
               
               return Fibonachi;
    }
    
    private String Factorial(int facto){
               int num1=2;
               int num2;
               int num3;
               int result=1;
               
               
               
               String Factorial = "";
               
               if(facto !=0){
               for (int i=2; i<=facto; i++){
                   result= result*(num1);
                   num2=num1;
                   num1=num2+1;
                   Factorial=""+result+"";
               }
               }
               else{
                   Factorial+="0";
               }
               return Factorial;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
    if (e.getSource()== btni){
        operacionPulsado("iniciar");
    }
    
    else if (e.getSource() == btnr){
            operacionPulsado("reiniciar");                
    }   
}
    
}
