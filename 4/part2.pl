use strict;
use warnings;

open(my $f, "<", "input.txt") or die "Failed to open input file: $!";
my @input = <$f>;
my $overlapping_pairs = 0;


for my $pair (@input) {
    my ($section1, $section2) = split(/,/, $pair);
    my ($start1, $end1) = split(/-/, $section1);
    my ($start2, $end2) = split(/-/, $section2);

    if (($start1 <= $end2) && ($end1 >= $start2)) {
        # If ranges overlap, increment the counter
        $overlapping_pairs++;
    }
}

print "Number of overlapping pairs: $overlapping_pairs\n";
