program Soal5_RekapNilai;
{ Rekap nilai M mahasiswa x N tugas dengan nested for }
var
  M, N, i, j: integer;
  nilai, jumlah, rata: real;
  lulus, tidakLulus: integer;
begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N)    : ');
  readln(N);

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    jumlah := 0;
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata := jumlah / N;

    write('Rata-rata: ', rata:0:2, ' -> ');
    if rata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('===== REKAP =====');
  writeln('Total LULUS       : ', lulus);
  writeln('Total TIDAK LULUS : ', tidakLulus);
end.