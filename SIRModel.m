function SIR = SIRModel(St,It,Rt,B,G)

dSdt = @(S,I,R,beta) (-beta./(S+I+R)).*S.*I;
dIdt = @(S,I,R,beta,gamma) (beta./(S+I+R)).*S.*I - gamma.*I;
dRdt = @(I,gamma) gamma.*I;

SIR(1) = dSdt(St,It,Rt,B);
SIR(2) = dIdt(St,It,Rt,B,G);
SIR(3) = dRdt(It,G);
end