program Soal2_Login;
{ Verifikasi kata sandi: repeat-until + break, maksimal 3 percobaan }
const
  SANDI = 'pascal123';
var
  input: string;
  percobaan: integer;
  berhasil: boolean;
begin
  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/3): ');
    readln(input);

    if input = SANDI then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break; { hentikan loop }
    end
    else
      writeln('Kata sandi salah.');
  until percobaan = 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.