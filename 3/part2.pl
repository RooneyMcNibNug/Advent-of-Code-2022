use strict;
use warnings;
use List::Util qw(intersect);

open(my $fh, "<", "input.txt") or die "Cannot open input.txt: $!";
my @lines = <$fh>;

my %items;
for (my $i = 0; $i < @lines; $i += 3) {
my @common_items = intersect($lines[$i], $lines[$i + 1], $lines[$i + 2]);
foreach my $item (@common_items) {
$items{$item}++;
}
}

my $sum = 0;
foreach my $item (keys %items) {
$sum += ord($item);
}

print "Sum of priorities: $sum\n";