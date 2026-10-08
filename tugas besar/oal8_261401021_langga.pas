program Soal8_GajiKaryawan;
{ Gaji berdasarkan golongan, lembur, dan bonus }
var
  gol: char;
  jam, gajiPokok, lembur, bonus, total: longint;
  valid: boolean;
begin
  write('Golongan (A/B/C): ');
  readln(gol);
  gol := upcase(gol);
  write('Total jam kerja per minggu: ');
  readln(jam);

  valid := true;
  case gol of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    valid := false;
  end;

  if not valid then
    writeln('Golongan tidak valid!')
  else
  begin
    { Lembur: kelebihan di atas 40 jam }
    if jam > 40 then
      lembur := (jam - 40) * 20000
    else
      lembur := 0;

    { Bonus khusus golongan C jika jam > 50 }
    if (gol = 'C') and (jam > 50) then
      bonus := 100000
    else
      bonus := 0;

    total := gajiPokok + lembur + bonus;

    writeln;
    writeln('===== RINCIAN GAJI =====');
    writeln('Gaji Pokok : Rp', gajiPokok);
    writeln('Lembur     : Rp', lembur);
    writeln('Bonus      : Rp', bonus);
    writeln('------------------------');
    writeln('Total Gaji : Rp', total);
  end;
end.