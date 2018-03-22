program tubes_parkir;
uses crt;

var
	iMenu : integer;
begin
	clrscr;
	writeln('========================================');
	writeln('    Selamat Datang di Program Parkir    ');
	writeln();
	writeln('silahkan pilih menu program dibawah ini');
	writeln('1. Mencetak Kartu Parkir ');
	writeln('2. Mencari tempat parkir sesuai dengan jenis ');
	writeln('3. Mencatat waktu keluar parkir dan menghitung ');
	writeln('4. Mencetak statistik harian(Berapa mobil yang parkir)');
	writeln('5. Mencetak Statistik harian(presentase okupansi)');
	writeln('6. Mencatat nomor mobil, jam masuk, dan jam keluar teks file');

	writeln();
	write('input menu yang anda pilih sesuai nomer: '); readln(iMenu);

	
	readln; {readln of end program}
end.