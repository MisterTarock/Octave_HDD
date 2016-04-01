#Choix des variables
Vtr = [3600,4200,5400,7200,10000,15000]; #différente gamme de vitesse
C = 40 #Température moyenne d'un HDD

#appel de la fonction
Res_frott;

#mise en place du graphique avec 3 courbes
hold on
x = Vtr;
y1 = Rfai;
y2 = Rfhe; 
y3 = Rfh2;
plot(x,y1,'r--')
plot(x,y2,'b:')
plot(x,y3,'g-')
hold off

title("Evolution de la Resistance de frottement en fonction de la Vitesse du HDD")
xlabel("Vitesse (tr/min)")
ylabel('Resistance de Frottement')
grid

legend('Air','Helium','diHydrogene')
