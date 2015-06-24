tn=52//no.of subcarriers
np=4//no.of subcarriers used as pilot subcarriers
nd=tn-np//no.of data subcarriers
FECcr=3/4//forward error correction code rate
m=log10(64)/log10(2)//bits per symbol
ndpos=m*FECcr*nd//no. of data bits transmitted per ofdm symbol
odsd=4*10^-6//data symbol duration
TDR=ndpos/odsd
printf('transmission data rate= %.fMbps',TDR*10^(-6))