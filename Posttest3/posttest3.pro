domains
nama,mk = symbol
nilai = char

predicates
nondeterm mhs(nama,mk,nilai)
nondeterm mk(mk)

clauses
mk(kecerdasan_buatan).
mk(pde).
mk(sistem_operasi).


mhs(irfan,kecerdasan_buatan,'A').
mhs(komeng,kecerdasan_buatan,'D').
mhs(dati,kecerdasan_buatan,'C').
mhs(fatima,kecerdasan_buatan,'B').
mhs(maspion,kecerdasan_buatan,'C').

mhs(ricky,pde,'E').
mhs(embang,pde,'A').
mhs(salmin,pde,'D').
mhs(vina,pde,'B').
mhs(sondang,pde,'C').

mhs(pamuji,sistem_operasi,'D').
mhs(luki,sistem_operasi,'E').
mhs(sadek,sistem_operasi,'B').
mhs(yusida,sistem_operasi,'A').
mhs(eka,sistem_operasi,'A').

goal
write("A. Nama Mahasiswa yang tidak mengikuti matakuliah kecerdasan buatan"),nl,
mhs(Nama,Mk,_), Mk=kecerdasan_buatan;
nl,write("B. Nama Mahasiswa yang tidak lulus"),nl,
mhs(Nama,_,Nilai), Nilai>'C';
nl,write("C. Nama Mahasiswa yang lulus"),nl,
mhs(Nama,_,Nilai), Nilai<='C';
nl,write("D. Nama Matakuliah yang diajarkan"),nl,
mk(MK);
nl,write("E. Seluruh Nama Mahasiswa yang ada"),nl,
mhs(Nama,_,_).