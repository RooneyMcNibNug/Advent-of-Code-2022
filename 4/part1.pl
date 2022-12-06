use strict;
use warnings;

open(my $f, "<", "input.txt") or die "Failed to open input file: $!";
my @input = <$f>;

my $overlapping_pairs = 0;

for my $pair (@input) {
    # Set ',' as the delimiter and section things
    my ($section1, $section2) = split(/,/, $pair);
    my ($start1, $end1) = split(/-/, $section1);
    my ($start2, $end2) = split(/-/, $section2);

    # Check if one range fully contains the other or not
    if (($start1 <= $start2) && ($end1 >= $end2)) {
        # If the first range fully contains the second, increment the counter
        $overlapping_pairs++;
    } elsif (($start2 <= $start1) && ($end2 >= $end1)) {
        # If the second range fully contains the first, increment the counter
        $overlapping_pairs++;
    }
}

print "Number of overlapping pairs: $overlapping_pairs\n";
