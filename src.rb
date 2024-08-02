eval $s = %w(
  s = %(eval$s=%w(#{$s})*"");

  b = "BAhsK2n//w8AAAAA8P////8PAAAAAPD/////DwCAAwDw/////w8AwAcA8P////8PAPw/APD/////DwD8PwDw/////w/A/D8D8P////8P/vvff/D/////D////z/w/////w/8//8/8P////8P//////D/////D/j//z/w/////w/g//8H8P////8PAP//AfD/////D4D//wHw/////w8AgAEA8P////8PAIABAPD/////DwCAAQDw/////w8AgAEA8P////8PAAAAAPD//w==";

  n = Marshal.load(b.unpack('m')[0]);

  sz = s.size;
  i = 0;
  j = 0;

  o = '';

  while (i < sz && j < 20*80);
    if (n&(1<<j)).zero?;
      o += 32.chr;
    else;
      o += s[i];
      i += 1;
    end;

    if (j % 80 == 79);
      o += "\n";
    end;

    j += 1;
  end;

  puts(o);

  # eval $s = %w{s = %(eval$s=%w(#{$s})*""); b = "BAhsK2n//w8AAAAA8P////8PAAAAAPD/////DwCAAwDw/////w8AwAcA8P////8PAPw/APD/////DwD8PwDw/////w/A/D8D8P////8P/vvff/D/////D////z/w/////w/8//8/8P////8P//////D/////D/j//z/w/////w/g//8H8P////8PAP//AfD/////D4D//wHw/////w8AgAEA8P////8PAIABAPD/////DwCAAQDw/////w8AgAEA8P////8PAAAAAPD//w=="; n = Marshal.load(b.unpack('m')[0]); sz = s.size; i = 0; j = 0; o = ''; while (i < sz & j < 20*80); if (n&(1<<j)).zero?; o += 32.chr; else; o += s[i]; i += 1; end; if (j % 80 == 79); o += "\n"; end; j += 1; end; puts(o); q@eval$s=@j; }*"";eval$s=%w{s=%{eval$s=%w(#{$s})*""};b="BAhsK2n//w8AAAAA8P////8PAAA
)*"";
