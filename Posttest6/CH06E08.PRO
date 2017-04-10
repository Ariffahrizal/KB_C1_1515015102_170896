/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o)
  %terdapat predikat dengan 2 parameter dengan parameter 1 dengan tipe data unsigned dan untuk inputan dan parameter 2 dengan tipe data real dan untuk output
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)
  %terdapat predikat dengan 4 parameter dengan parameter 1 dengan tipe data unsigned dan untuk inputan dan parameter 2 dengan tipe data real dan untuk output
  %parameter 3 dengan tipe data unsigned dan untuk inputan parameter 4 dengan tipe data real dan untuk inputan 
 
/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):-
  %Didalam clausa/body rule ini lah yang cocok dengan goal karena jumlah argumennya sesuai dengan goal.
  %Jadi var N=3 dan X=FactN
  
  %Setelah mendapat hasil dari subgoal yaitu FactN=6 maka dikembalikan lagi FactN ke variabel X dan dikembalikan ke goal dan outputnya adalah X=6
  
  	factorial(N,FactN,1,1.0).
  	%Pada subgoalnya terdapat klausa factorial dengan 4 argumen. Karena ada 2 klausa yang mirip dengan subgoal ini 
  	%kita cocokkan yang saya beri komentar factorial atas atau factorial bawah
  	%dimana di atas kita sudah dideklarasikan bahwa nilai dari variabel n=3
  	%karena argumen ke-3 bernilai 1 dan variabel N ke-1 tidak sama dengan variabel N ke-3 maka yang cocok adalah factorial bawah
  	
  %factorial atas
  factorial(N,FactN,N,FactN):-!.
  /*
  sebelumnya dicocokkan dengan subgoal factorial(N=3, FactN=belum ditemukan, NewI=3, NewP=6)
  Terdapat subgoal dengan rule nilai argumen 1 (yang dilambangkan dengan var N=3) = nilai argumen 3 (yang dilambangkan dengan var NewI=3)
  dan nilai argumen 2 (yang dilambangkan dengan var FactN) diambil dari nilai argumen 4(yang dilambangkan dengan var NewP=6) 
  karena pada rule nya nilai argumen 2 = nilai argumen 4 maka nilai argumen 2 (yang dilambangkan dengan var FactN) = 6.
  setelah akan ditemukan cut yang digunakan untuk mencegah terjadinya lacak balik sehingga program akan stop walaupun masih ada jawaban yang belum ditampilkan dalam goal.
  jadi kembali lagi ke klausa paling atas karena hanya 2 argumen saja dan karena argumen1=argumen3 dan argumen2=argumen4 dan variabelnya juga sama 
  maka yang diambil adalah argumen 1 (yang dilambangkan dengan var N=3) dan argumen 2 (yang dilambangkan dengan var FactN) = 6.
  */
  
  %factorial bawah
  factorial(N,FactN,I,P):-
  /*
  1. sebelumnya rule ini dicocokkan dengan subgoal factorial(N,FactN,1,1.0).
  jadi variabel I diikat dengan nilai 1 dan variabel P diikat dengan nilai 1.0
  
  2. variabel I berubah menjadi 2 dan variabel P berubah menjadi 2
  */
	NewI = I+1,
	/*
	1. newi=I+1. dimana nilai I tadi =1 maka NewI=1+1 dan NewI = 2.
	
	2. newi=I+1. dimana nilai I tadi =2 maka NewI=2+1 dan NewI = 3.
	*/		
	NewP = P*NewI,		
	/*
	1. NewP = P*NewI dimana nilai dari P=1.0 dan NewI = 2 maka NewP=1.0*2 dan NewP=2.
	
	2. NewP = P*NewI dimana nilai dari P=2 dan NewI = 3 maka NewP=2*3 dan NewP=6.
	*/
	factorial(N, FactN, NewI, NewP).
	%1. factorial(N=3, FactN=belum ditemukan, NewI=2, NewP=2) karena FactN belum ditemukan maka program akan melakukan loop factorial bawah kembali
	
	%2. factorial(N=3, FactN=belum ditemukan, NewI=3, NewP=6) walapun FactN belum ditemukan 
	%tetapi nilai argumen 1 (yang dilambangkan dengan var N) = nilai argumen 3 (yang dilambangkan dengan var NewI) dan cocok dengan klausa factorial atas maka program pindah keatas
	
goal
  factorial(3,X).
  /* 
  kita cocokkan goal ke klausa dan yang cocok adalah klausa paling atas
  
  kita mendapatkan kembalian lagi dari klausa paling atas dengan hasil X=6.
  */
