#Formules reprenant les différentes variables nécessaire au calcul de 
#la résistance de frottement


d=10/100; #cm converti en m #diamètre arbitraire du HDD
tr=d*pi; #m
V =(Vtr/60)*tr; #Vit en m/s = Vtr en (tr/min)/60* taille tour

T= C+273.15; #K
P=101325; #Pa
Rai=287; #J/(kg*K) #Constante spécifique de l'air
Airho =1/(Rai*T/P) #rho de l'Air variant selon la Température du disque

Rhe=2077; #J/(kg*K) #Constante spécifique de l'Helium    
Herho =1/(Rhe*T/P) #rho de l'Helium variant selon la Température du disque  

#proposition personnel
Rh2=4124; #J/(kg*K) #Constante spécifique au diHydrogène   
h2rho =1/(Rh2*T/P) #rho du diHydrogène variant selon la Température du disque  

qai =(Airho.*V.^2)/2; #pression dynamique
qhe =(Herho.*V.^2)/2;
qh2 =(h2rho.*V.^2)/2;

S=(d/2)*0.001; #m^2 #Surface de référence
Cf=0.45; #Coéfficent de trainée d'une boule, hypothèse simplificatrice    
        #prise pour représenter l'axe de la tête de lecture


Rfai =qai*S*Cf
Rfhe =qhe*S*Cf
Rfh2 =qh2*S*Cf