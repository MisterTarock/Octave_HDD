#Choices of variables
Vtr = [3600,4200,5400,7200,10000,15000]; #Some range of rotation speed
C = input ("Give a temparature of choice (usually for a HDD, it's between 40 and 50 C)': ")

#Call of the function
Res_frott;

#Drawing of the graph with 3 different curves 
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
