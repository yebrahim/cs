open( FH, $ARGV[0] ) || die "couldn't open\n";
while ( <FH> ) {
  $data .= $_;
}

while ( $data =~ m/$pattern/gi ) {
  $results .= "  " . (1+substr($data,0,$-[0]) =~ y/\n//) . ". $&\n";
}
if ($results) {
  print "$ARGV[0]:\n$results";
}
