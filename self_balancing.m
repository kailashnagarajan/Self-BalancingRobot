%{                

                Kp                       
  G(s) = --------------------- * exp(-Td*s)
         1+2*Zeta*Tw*s+(Tw*s)^2            
                                           
         Kp = 0.013669                     
         Tw = 0.045491                     
       Zeta = 0.45729                      
         Td = 0          Td = 0.04                  
  %}

 Kp = 0.013669                     
         Tw = 0.045491                     
       Zeta = 0.45729                      
         Td = 0 ;%         Td = 0.04 

num = Kp;

den = [Tw^2 2*Zeta*Tw 1];

sys = tf(num,den)



x1 =8.11 %11.66;
x2 = 0.35;



geta = log(x1/x2)/sqrt((4*pi^2)+(log(x1/x2))^2)



wn = 12.3;

s = tf('s');

sys = wn^2/(s^2 + 2*geta*wn*s + wn^2)
