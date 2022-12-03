use strict;
use warnings;

# Please load the inputs into this one like so: $ perl part1c.pl < input.txt 
my @lines = <>;
my $sum = 0;

foreach my $line (@lines) {
    my $first_compartment = substr $line, 0, length($line) / 2;
    my $second_compartment = substr $line, length($line) / 2;

    # Map the intersections
    my %first_compartment_chars = map { $_ => 1 } split //, $first_compartment;
    my %second_compartment_chars = map { $_ => 1 } split //, $second_compartment;
    my @intersection = grep { exists $first_compartment_chars{$_} && exists $second_compartment_chars{$_} } keys %first_compartment_chars;

    # Compute priorities based on casetypes
    foreach my $char (@intersection) {
        if ($char ge 'a' && $char le 'z') {
            $sum += ord($char) - ord('a') + 1;
        }
        elsif ($char ge 'A' && $char le 'Z') {
            $sum += ord($char) - ord('A') + 27;
        }
    }
}

print $sum, "\n";