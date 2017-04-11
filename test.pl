#!/usr/bin/perl

#$path=`pwd`;
#$path=~s/\n/\//g;

if(@ARGV > 0){
  $fn=$ARGV[0];
}
else{
  die "Must supply a file.\n";
}

print "Loading file: ".$fn."\n";

open (FILE,"$fn");
@lines=<FILE>;
close(FILE);

for($i=0;$i<@lines;$i++) {
  $lines[$i]=~ s/\n//g;
  @result = split(/\#/,$lines[$i]);
  print $i+1;
  print ". ";
  print "$result[0]\n";
  $foo = <STDIN>;
  print "$result[1]\n";
  }

