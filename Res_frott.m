#The formula make use of the value of the temperature and the rotation speed 
#given in the main fonction by the user as his choice to answer with the
#dynamic pressure and the friction resistance of each gaz.



d=9.5/100; #cm convert in m #diameter taken myself on the HDD disc
tr=d*pi; #m
V =(Vtr/60)*tr; #Speed in m/s = Vtr in (tr/min)/60* circumference

T= C+273.15; #K
P=101325; #Pa
Rai=287; #J/(kg*K) #Constant specific from air
Airho =1/(Rai*T/P) #rho from Air varying from the temperature of the disc

Rhe=2077; #J/(kg*K) #Constant specific from Helium    
Herho =1/(Rhe*T/P)  #rho from Helium varying from the temperature of the disc

#Personal proposal of a new gaz 
Rh2=4124; #J/(kg*K) #Constant specific from  diHydrogène   
h2rho =1/(Rh2*T/P)  #rho from diHydrogène varying from the temperature of the disc

qai =(Airho.*V.^2)/2; #dynamic pressure
qhe =(Herho.*V.^2)/2;
qh2 =(h2rho.*V.^2)/2;

S=(d/2)*0.001; #m^2 #Surface area of reference
Cf=0.45; #Drag coefficent of a ball, simplifying hypotesis taken to represent   
         #the arm of lecture


Rfai =qai*S*Cf
Rfhe =qhe*S*Cf
Rfh2 =qh2*S*Cf