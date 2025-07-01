clc
clearvars
close all
w_n=2;
k=3;
zeta=[0.1 0.15 0.2 0.3 0.5 1/sqrt(2) 1 2];
w_vec=linspace(0,5,1000);
legend_string_vec=["$\zeta=0.1$","$\zeta=0.15$","$\zeta=0.2$","$\zeta=0.3$","$\zeta=0.5$","$\zeta=1/\sqrt{2}$","$\zeta=1$","$\zeta=2$"];
f1=figure;
hold on
f2=figure(2);
subplot(2,1,1)
hold on
subplot(2,1,2)
hold on
f3= figure;
subplot(4,1,1:3)
hold on
subplot(4,1,4)
hold on
f4=figure;
hold on
for n=1:length(zeta)
H_vec=SDOF_FRF(w_vec,k,w_n,zeta(n));
figure(f1)
plot3(w_vec/w_n,real(H_vec),imag(H_vec))
hold on
figure(f2)
subplot(2,1,1)
plot(w_vec/w_n,real(H_vec))
hold on
subplot(2,1,2)
plot(w_vec/w_n,imag(H_vec))
hold on
figure(f3)
subplot(4,1,1:3)
plot(w_vec/w_n,abs(H_vec))
hold on
subplot(4,1,4)
plot(w_vec/w_n,angle(H_vec))
hold on
figure(f4)
plot(real(H_vec),imag(H_vec))
hold on
end
%7anyaket elfigures w elgaw dah
figure(f1)
grid on
title("$H(\omega)$ for $\omega_{\mathrm{n}}="+w_n+"$ $and$ $k="+k+'$','Interpreter','latex')
legend(legend_string_vec,'Interpreter','latex')
xlabel("$\omega/\omega_{\mathrm{n}}$",'Interpreter','latex')
ylabel("$\Re(H(\omega))$",'Interpreter','latex')
zlabel("$\Im(H(\omega))$",'Interpreter','latex')
view([20 30])
%_________________________________________________________________________
figure(f2)
subplot(2,1,1)
set(gca,'XTickLabel',[])
grid on
title("$H(\omega)$ for $\omega_{\mathrm{n}}="+w_n+"$ $and$ $k="+k+'$','Interpreter','latex')
ylabel("$\Re(H(\omega))$",'Interpreter','latex')
subplot(2,1,2)
grid on
legend(legend_string_vec,'Interpreter','latex')
ylabel("$\Im(H(\omega))$",'Interpreter','latex')
xlabel("$\omega/\omega_{\mathrm{n}}$",'Interpreter','latex')
%_________________________________________________________________________
figure(f3)
subplot(4,1,1:3)
set(gca,'XTickLabel',[])
grid on
title("$H(\omega)$ for $\omega_{\mathrm{n}}="+w_n+"$ $and$ $k="+k+'$','Interpreter','latex')
ylabel("$|(H(\omega)|$",'Interpreter','latex')
legend(legend_string_vec,'Interpreter','latex')
subplot(4,1,4)
grid on
ylabel("$\angle H(\omega)$ (deg.)",'Interpreter','latex')
xlabel("$\omega/\omega_{\mathrm{n}}$",'Interpreter','latex')
%_________________________________________________________________________
figure(f4)
grid on
title("$H(\omega)$ for $\omega_{\mathrm{n}}="+w_n+"$ $and$ $k="+k+'$','Interpreter','latex')
xlabel("$\Re(H(\omega))$",'Interpreter','latex')
ylabel("$\Im(H(\omega))$",'Interpreter','latex')
legend(legend_string_vec,'Interpreter','latex')