program Soal3_DeretAngka;
{ Deret 1..N dengan while + continue }
var
  N, pilihan, i: integer;
begin
  write('Masukkan nilai N: ');
  readln(N);
  writeln('Kategori deret (1: Ganjil, 2: Genap)');
  write('Pilihan: ');
  readln(pilihan);

  writeln('Hasil deret:');
  i := 0;
  while i < N do
  begin
    i := i + 1; { naikkan dulu supaya continue tidak membuat loop tak berhenti }

    { lewati jika tidak sesuai kategori }
    if (pilihan = 1) and (i mod 2 = 0) then continue;
    if (pilihan = 2) and (i mod 2 = 1) then continue;

    { lewati kelipatan 5 }
    if i mod 5 = 0 then continue;

    write(i, ' ');
  end;
  writeln;
end.