program Soal4_Kalkulator;
{ Kalkulator sederhana: case-of + repeat-until }
var
  pilih: integer;
  a, b: real;
  x, y: integer;
  lagi: char;
begin
  repeat
    writeln('===== KALKULATOR =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilih);

    write('Masukkan angka pertama : ');
    readln(a);
    write('Masukkan angka kedua   : ');
    readln(b);

    case pilih of
      1: writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
      2: writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
      3: writeln('Hasil: ', a:0:2, ' x ', b:0:2, ' = ', (a * b):0:2);
      4: if b = 0 then
           writeln('Error: pembagian dengan nol!')
         else
           writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', (a / b):0:2);
      5: begin
           x := trunc(a);
           y := trunc(b);
           if y = 0 then
             writeln('Error: pembagian dengan nol!')
           else
           begin
             writeln('Hasil: ', x, ' DIV ', y, ' = ', x div y);
             writeln('Hasil: ', x, ' MOD ', y, ' = ', x mod y);
           end;
         end;
    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;
  until (lagi = 'T') or (lagi = 't');
end.+7