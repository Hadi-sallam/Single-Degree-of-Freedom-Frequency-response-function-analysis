function H_vec=SDOF_FRF(w_vec,k,w_n,zeta)
H_vec=zeros(1,length(w_vec));
for n=1:length(w_vec)
    H_vec(n)=1/(k*(1-(w_vec(n)/w_n)^2+2*1i*zeta*w_vec(n)/w_n));
end