/*****************************************************************************
 Project: AI
 Purpose: Posttest
 Created by: Arif Fahrizal
******************************************************************************/

predicates
  nembak(symbol,symbol) - nondeterm (o,o)
  cowok(symbol) - nondeterm (o)
  nondeterm cewek(symbol,string,string,integer,integer,string,string)
  suka(symbol,symbol) - nondeterm (i,i)
  jomblo(symbol) - nondeterm (i)
  nondeterm mahasiswa(symbol,string,string,integer,integer,string,string)

clauses
  nembak(X,Y):-
	cowok(X),
	cewek(Y,_,_,_,_,_,_),
	suka(X,Y),
   	jomblo(Y).

  cowok(taufiq).
  cowok(ansyori).

  cewek(safira,"Fkti","Cantik dan putih",2015,18,"Grogot","SMKN 1").
  cewek(salsabila,"Ilkom","Cantik",2016,17,"Bontang","SMAN 1").
  
  suka(taufiq, safira).
  suka(taufiq, salsabila).
  suka(ansyori, salsabila).
  
  jomblo(safira).
  
  mahasiswa(Nama,Mahasiswa,Karna_dia,Angkatan,Umur,Asal,Sekolah_asal):-
		cowok(X),
		cewek(Nama,Mahasiswa,Karna_dia,Angkatan,Umur,Asal,Sekolah_asal),
		suka(X,Nama),
	   	jomblo(Nama).
	

goal  
  nembak(Si,Pengen_nembak);
  mahasiswa(_,Mahasiswa,Karna_Dia,Angkatan,Umur,Asal,_).
  
  


