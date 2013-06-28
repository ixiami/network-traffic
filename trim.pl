#!/usr/bin/perl

$len = @ARGV;
if ($len > 0) {
  $input = @ARGV[0];
} else {
	$input = 'nload.log';
}
#print "@ARGV";
open NLOAD, "<$input";

while (read(NLOAD, $buf, 1)) {
	#print $_;
	#s/Device/\nDevice/g;
	if ($buf =~ /[a-zA-Z0-9=: \/\(\)\[\]\.]/) {
		print $buf;
	}
}
