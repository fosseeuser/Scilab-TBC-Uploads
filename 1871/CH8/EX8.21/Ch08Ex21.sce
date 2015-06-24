// Scilab code Ex8.21 : Pg:347(2008)
clc;clear;
bin = ['10001100', '00101110', '01011111', '01111011', '00111010', '10010101', '10110110', '01011011'];
printf("\n___________________________________");
printf("\nBinary      Octal       Hexadecimal");
printf("\n___________________________________");
for i=1:1:8
printf("\n%8s    %4s         %4s", bin(i), dec2oct(bin2dec(bin(i))), dec2hex(bin2dec(bin(i))));
end
printf("\n___________________________________");


// Result 
// ___________________________________
// Binary      Octal       Hexadecimal
// ___________________________________
// 10001100     214           8C
// 00101110      56           2E
// 01011111     137           5F
// 01111011     173           7B
// 00111010      72           3A
// 10010101     225           95
// 10110110     266           B6
// 01011011     133           5B
// ___________________________________ 