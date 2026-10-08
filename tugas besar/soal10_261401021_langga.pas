program Soal10;

  var
    nomorHari: integer;
    namaHari: string;

  begin
    writeln('=== PROGRAM NAMA HARI ===');
    write('Masukkan nomor hari (1-7): ');
    readln(nomorHari);

    case nomorHari of
      1: namaHari := 'Senin';
      2: namaHari := 'Selasa';
      3: namaHari := 'Rabu';
      4: namaHari := 'Kamis';
      5: namaHari := 'Jumat';
      6: namaHari := 'Sabtu';
      7: namaHari := 'Minggu';
    else
      namaHari := '';
    end;

    if namaHari = '' then
      writeln('Nomor hari tidak valid.')
    else
      writeln('Hari ', namaHari);
  end.