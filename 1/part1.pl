use strict;
use warnings;
use List::Util 'max', 'sum';

my $elf;
my @cals;

open (my $f, "<", "input.txt") or die "Failed to open your input file: $!\n";

while (<$f>) {
    chomp;
    if ($_) {
        $elf += $_;
    } else {
        $elf = 0;
        push @cals, $elf;
    }
}

push @cals, $elf;
print "Solution for part 1: ", max(@cals);

@cals = sort {$b <=> $a} @cals;
print "\nSolution for part 2: ", sum(@cals[0..2]);

close $f