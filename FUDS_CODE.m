plot(FUDS0.CurrentA)
I0 = FUDS0.CurrentA;
plot(FUDS0.VoltageV)
V0 = FUDS0.VoltageV;
plot(FUDS25.CurrentA)
I25 = FUDS25.CurrentA; 
plot(FUDS25.VoltageV)
V25 = FUDS25.VoltageV;
plot(FUDS45.CurrentA)
I45 = FUDS45.CurrentA;
plot(FUDS45.VoltageV)
V45 = FUDS45.VoltageV;

a = 1;
b = ones(1,4802)/4802;

I0F = filter(b,a,I0);
I25F = filter(b,a,I25);
I45F = filter(b,a,I45);
V0F = filter(b,a,V0);
V25F = filter(b,a,V25);
V45F = filter(b,a,V45);

t = 1:length(I0);
t = 1:length(I25);
t = 1:length(I45);
t = 1:length(V0);
t = 1:length(V25);
t = 1:length(V45);

plot(t,I0,'--',t,I0F,'-'); legend('Orignal Data I0','Filtered Data I0F')
plot(t,I25,'--',t,I25F,'-'); legend('Orignal Data I25','Filtered Data I25F')
plot(t,I45,'--',t,I45F,'-'); legend('Orignal Data I45','Filtered Data I45F')
plot(t,V0,'--',t,V0F,'-'); legend('Orignal Data V0','Filtered Data V0F')
plot(t,V25,'--',t,V25F,'-'); legend('Orignal Data V25','Filtered Data V25F')
plot(t,V45,'--',t,V45F,'-'); legend('Orignal Data V45','Filtered Data V45F')

V0NOM = -1 + 2.*(V0F - min(V0F))./(max(V0F) - min(V0F));
V25NOM = -1 + 2.*(V25F - min(V25F))./(max(V25F) - min(V25F));
V45NOM = -1 + 2.*(V45F - min(V45F))./(max(V45F) - min(V45F));
I0NOM = -1 + 2.*(I0F - min(I0F))./(max(I0F) - min(I0F));
I25NOM = -1 + 2.*(I25F - min(I25F))./(max(I25F) - min(I25F));
I45NOM = -1 + 2.*(I45F - min(I45F))./(max(I45F) - min(I45F));

plot(I0NOM)
plot(I25NOM)
plot(I45NOM)
plot(V0NOM)
plot(V25NOM)
plot(V45NOM)
