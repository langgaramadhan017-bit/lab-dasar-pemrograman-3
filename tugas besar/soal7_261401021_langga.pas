program Soal7_TarifParkir;
{ Tarif parkir dengan case-of }
var
  kode: char;
  lama, tarif: longint;
  valid: boolean;
begin
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  kode := upcase(kode);
  write('Lama parkir (jam): ');
  readln(lama);

  valid := true;
  tarif := 0;

  case kode of
    'M': if lama > 10 then tarif := 30000
         else tarif := 5000 + (lama - 1) * 3000;
    'K': if lama > 10 then tarif := 10000
         else tarif := 2000 + (lama - 1) * 1000;
    'B': if lama > 10 then tarif := 50000
         else tarif := 10000 + (lama - 1) * 5000;
  else
    valid := false;
  end;

  if not valid then
    writeln('Kode kendaraan tidak valid!')
  else if lama < 1 then
    writeln('Lama parkir minimal 1 jam!')
  else
  begin
    if lama > 10 then
      writeln('(Berlaku tarif maksimal flat)');
    writeln('Total tarif parkir: Rp', tarif);
  end;
end.