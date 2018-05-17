#if have the same key then to obtain the sum of the values
#xiegy
#2018/5/17
#!/usr/bin/perl                                                                      │
use strict;                                                                        
use warnings;                               
my @array;
my %hash;

open FILE,'<',"./test3.file" or die"can not open the file";             
while (<FILE>) {                                                                     
        chomp $_;                                                                    
        if (/([a-z])\s*(.*)/) {                                                    
		push @array,($1,$2);
        }                                                                            
}

while (@array) {
	my $k = shift @array;
	my $v = shift @array;
	$hash{$k} += $v;
}
#Formatted output
while ((my $key,my $value) = each %hash) {
print ("$key\t$value\n");
}
