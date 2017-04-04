/*
1.)Apa perbedaan data object sederhana dan jamak?
Jawab:
Data Object Sederhana terbagi menjadi dua bagian yaitu Variabel (setiap penulisan variable harus dengan huruf capital atau dengan sebuah underscore) dan 
Constanta (apapun yang diidentifikasikan sebaagai sebuah object yang nilainya bisa bervariasi), sedangkan 

Data Object Jamak memperlakukan beberapa informasi sebagai sebuah item tunggal, data object dimulai dengan sebuah nama yang biasa disebut functor yang diikuti oleh tiga argumen. 
Functor tidak melakukan apa-apa, hanya sebuah nama yang mengidentifikasi sebuah jenis data objek jamak yang didalamnya terdapat argument.
Contoh:  
ulangtahun = ulangtahun(orang,tanggal)
orang = orang(namapertama, namakedua)   
tanggal = tanggal(unsigned, string, unsigned) 

2.)Buatlah program dengan narasi berikut ini (gunakan data object jamak):
Jawab:
*/
DOMAINS
alamat_asal = alamat(symbol,symbol,symbol)
nama_mahasiswa = nama_mhs(symbol,symbol)
nama_dosen = nama_dosen(symbol,symbol)
jenis_kelamin,nama_matkul,program_studi,ruang = symbol
nim = integer

PREDICATES
nondeterm mahasiswa(nama_matkul,nama_mahasiswa,jenis_kelamin,nim,alamat_asal)
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
cetak_mahasiswa(nama_mahasiswa,nama_dosen,ruang,alamat_asal)
nondeterm matakuliah(nama_matkul,nama_dosen,program_studi,ruang)
nondeterm matakuliah_yang_diajarkan_pada_semester_tersebut(nama_matkul,nama_mahasiswa,ruang,nama_dosen)

CLAUSES
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama_mhs("Sugeng","Riyadi"),"1",nama_dosen("Abdul","Kadir")).
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama_mhs("Yulia","Sugondo"),"1",nama_dosen("Abdul","Kadir")).
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama_mhs("Budiman","Sejati"),"1",nama_dosen("Abdul","Kadir")).

matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama_mhs("Laksamana","Sukardi"),"2",nama_dosen("Indra","Yatini")).
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama_mhs("Rini","Suwandi"),"2",nama_dosen("Indra","Yatini")).
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama_mhs("Kwik Kian","Gie"),"2",nama_dosen("Indra","Yatini")).

matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama_mhs("Riri","Reza"),"3",nama_dosen("Sigit","Anggoro")).
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama_mhs("Rachel","Maryam"),"3",nama_dosen("Sigit","Anggoro")).
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama_mhs("Garin","Nugroho"),"3",nama_dosen("Sigit","Anggoro")).

mahasiswa("Intelegensi Buatan",nama_mhs("Sugeng","Riyadi"),lakilaki,2002001,alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")).
mahasiswa("Intelegensi Buatan",nama_mhs("Yulia","Sugondo"),perempuan,2002002,alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).
mahasiswa("Intelegensi Buatan",nama_mhs("Budiman","Sejati"),lakilaki,2002003,alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

mahasiswa("PDE",nama_mhs("Laksamana","Sukardi"),lakilaki,2002004,alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")).
mahasiswa("PDE",nama_mhs("Rini","Suwandi"),perempuan,2002005,alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")).
mahasiswa("PDE",nama_mhs("Kwik Kian","Gie"),lakilaki,2002006,alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).

mahasiswa("Teknik Antar Muka",nama_mhs("Riri","Reza"),lakilaki,2002007,alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah")).
mahasiswa("Teknik Antar Muka",nama_mhs("Rachel","Maryam"),perempuan,2002008,alamat("Jl. Otista No. 112","Bandung","Jawa Barat")).
mahasiswa("Teknik Antar Muka",nama_mhs("Garin","Nugroho"),lakilaki,2002009,alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua")).

matakuliah("Intelegensi Buatan",nama_dosen("Abdul","Kadir"),"Manajemen Informatika","1").
matakuliah("PDE",nama_dosen("Indra","Yatini"),"Teknik Informatika","2").
matakuliah("Teknik Antar Muka",nama_dosen("Sigit","Anggoro"),"Teknik Komputer","3").

mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:-
write("\t*************  MAHASIAWA YANG MENGIKUTI MATAKULIAH INTELEGENSI BUATAN  *************"),nl,
write("*****************************************************************************************************************************"),nl,nl,
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl,
write("NIM\t\t Nama Mahasiswa\t\t Nama Dosen\tRuang\t\t Alamat\n"),
mahasiswa("Intelegensi Buatan",_,_,_,_),
matakuliah(_,_,_,"1"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl,
cetak_mahasiswa(nama_mhs(symbol,symbol),nama_dosen(symbol,symbol),ruang,alamat(symbol,symbol,symbol)).	

cetak_mahasiswa(nama_mhs(symbol,symbol),nama_dosen(symbol,symbol),ruang,alamat(symbol,symbol,symbol)):-
write("2002001","\t\t ","Sugeng Riyadi","\t\t ","Abdul Kadir","\t ","1","\t ","Jl. Sudirman No. 2","Pontianak","Kalimantan Barat"),nl,
write("2002002","\t\t ","Yulia Sugondo","\t\t "," Abdul Kadir","\t ","1","\t ","Jl. A. Yani No. 10","Klaten","Jawa Tengah"),nl,
write("2002003","\t\t ","Budiman Sejati","\t\t "," Abdul Kadir","\t ","1","\t ","Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah"),nl.

GOAL
%Goal pertanyaan pertama
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan.
%Goal pertanyaan kedua
%matakuliah_yang_diajarkan_pada_semester_tersebut(Matakuliah,Mahasiswa,Ruang,Dosen).