program tubes_parkir;
uses crt;

CONST
	Nmax = 50;

TYPE
		kendaraan = record
		NoPlat : string;
		Jmobil: char;
		Jmasuk : string;
		kuota : integer;
		Jkeluar : string;
		// No : integer;
		TParkir : integer;
END;

var
	iMenu, i : integer;

	aKendaraan : array [1..30] of kendaraan;


	// jgn lupa tambah variabel prosedurnya
	procedure pilih1();
	
	begin
		writeln('               1. Cetak Kartu Parkir                ');
		writeln('====================================================');
		write('Masukkan Nomer Plat               : '); readln(aKendaraan[i].NoPlat);
		write('Masukkan Jenis Mobil (B/K): '); readln(aKendaraan[i].Jmobil);
		// ini untuk ukuran mobil
		
		if (aKendaraan[i].Jmobil = 'B') then
			aKendaraan[i].kuota := 2
		else
			aKendaraan[i].kuota := 1;

		aKendaraan[i].TParkir := aKendaraan[i-1].TParkir - aKendaraan[i].kuota;

		write('Jam Masuk : '); readln(aKendaraan[i].Jmasuk);
		i := i +1;

		writeln('====================================================');

	end;


	procedure pilih2();
	var
		plat : string;
		Jmobil1 : char;
		j : integer;
		Nj : integer;
		Kmobil : integer;

	begin
		writeln('               2. Cari tempat parkir                ');
		writeln('====================================================');
		writeln('Masukkan Ukuran kendaraan (B/K): '); readln(Jmobil1);
		writeln('Masukkan Plat Nomer: '); readln (plat);

		j := 1;
		// nnti disini bakal ada output daftar parkir kosong

		while (j <= NMax) do
		begin
			if (aKendaraan[j].NoPlat = plat) then 
			begin
				writeln('Tempat Parkir tersedia di', aKendaraan[j].TParkir);
				readln;
				j := 51;
			end
			else 
				j := j + 1;

		end;
		//until ((J <= Nmax) or (aKendaraan[j].NoPlat <> plat));

		writeln('====================================================');

	end;

	procedure pilih3();
	//procedure record harga dan lamanya waktu parkir
	var

	NoPlat3 : integer
	k : integer

	begin
		writeln('               3. Catat waktu dan tarif parkir      ');
		writeln('====================================================');
		writeln('1. Masukkan Nomer Plat kendaraan: '); readln(NoPlat3)

		k := 1;
		//input plat lalu search si jamnya
		writeln('2. Masukkan jam keluar kendaraan: ');
		//input jam keluar

		while( (k <= NMax) and (aKendaraan[k].NoPlat <> NoPlat3)) do
		begin
			k := k + 1;
		end;

		if(aKendaraan[k].NoPlat <> NoPlat3)then

		//perhitungan jamnya

		writeln('3. tarif parkir yang perlu dibayar: ');
		// buat record durasi parkir dlu nnti output jumlah yang harus dibayar disini
		writeln('====================================================')


	end;

	procedure pilih4();

	begin
		writeln('              4. Cetak Statistik                    ');
		writeln('====================================================');
		writeln('1. Cetak Statistik Masuk dan keluar');
		writeln('2. Cetak presentasi okupansi');
		writeln('');
		writeln('Masukkan pilihan: ');
		//buat prosedure cetak terdiri dari Jumlah Kendaraan besar dan kecil

		//input ya atau tidak

		// outpuknan hasil presentasi hariannya
		writeln('====================================================');

	end;

	procedure pilih5 ();

	begin
		writeln('            5. Catat kendaraan masuk dan keluar     ');
		writeln('====================================================');
		writeln('1. Mencatat (NoMobil, jam masuk, dan jam keluar');

		writeln('====================================================');

	end;


	procedure menuUtama();
	var
		pilih : integer;

	begin
		repeat
		begin
			clrscr;
			writeln('================================================');
			writeln('===    Selamat Datang di Program Parkir      ===');
			writeln('===    Silahkan pilih menu dibawah ini       ===');
			writeln('===                                          ===');
			writeln('===    1. Cetak kartu Parkir                 ===');
			writeln('===    2. Cari tempat parkir                 ===');
			writeln('===    3. Catat waktu dan tarif parkir       ===');
			{cetat waktunya sesuai jam keluar lalu hitung tarifnya sesuai
			 dengan jenis dan lamanya waktu parkir} 

			writeln('===    4. Cetak Statistik harian             ==='); 
			{ cetak statistik harian ada 2 pilihan (1. jumlah kendaraan 
			dan 2. presentasi okupansi).}
			writeln('===    5. Catat kendaraan masuk dan keluar   ===');
			writeln('===    6. Keluar                             ===');
			writeln('================================================');
			writeln();
			write('Masukkan angka untuk memilih menu: '); readln(pilih);

			if (pilih = 1) then 
			begin
					pilih1();
					readln;
			end
			else if (pilih = 2) then
			begin
					pilih2();
					readln;
			end
			else if (pilih = 3) then
					pilih3()
			else if (pilih = 4) then
					pilih4()
			else if (pilih = 5) then
					pilih5()
			else if (pilih = 6) then
					writeln('Aplikasi selesai digunakan')
			else
			begin
					writeln('Keyword yang anda masukkan salah');
					readln;
			end;

		end;
		until(pilih = 6);

	end;


begin
	clrscr;
	i := 1;
	aKendaraan[0].TParkir := Nmax;
	aKendaraan[1].TParkir := Nmax;

	menuUtama();

	
	readln; {readln of end program}
end.