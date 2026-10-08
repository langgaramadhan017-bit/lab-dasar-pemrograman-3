program Soal6_NilaiAkhir;
{ Nilai akhir = 30% Tugas + 30% UTS + 40% UAS }
var
  tugas, uts, uas, akhir, hadir: real;
  huruf: char;
begin
  write('Nilai Tugas       : '); readln(tugas);
  write('Nilai UTS         : '); readln(uts);
  write('Nilai UAS         : '); readln(uas);
  write('Kehadiran (%)     : '); readln(hadir);

  akhir := 0.3 * tugas + 0.3 * uts + 0.4 * uas;

  { Indeks huruf }
  if akhir >= 85 then huruf := 'A'
  else if akhir >= 75 then huruf := 'B'
  else if akhir >= 60 then huruf := 'C'
  else if akhir >= 50 then huruf := 'D'
  else huruf := 'E';

  writeln;
  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', huruf);

  { Status kelulusan: nilai >= 60 DAN kehadiran >= 80 }
  if (akhir >= 60) and (hadir >= 80) then
    writeln('Status       : LULUS')
  else
    writeln('Status       : TIDAK LULUS');
end.