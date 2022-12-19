use strict;
use warnings;

open(my $f, "<", "input.txt") or die "Failed to open input file: $!";
my $input = <$f>;

my $count = 0;

for (my $i = 0; $i < length($input) - 3; $i++) {
  my $char1 = substr($input, $i, 1);
  my $char2 = substr($input, $i + 1, 1);
  my $char3 = substr($input, $i + 2, 1);
  my $char4 = substr($input, $i + 3, 1);

  if ($char1 ne $char2 && $char1 ne $char3 && $char1 ne $char4 && $char2 ne $char3 && $char2 ne $char4 && $char3 ne $char4) {
    print $count + 4;
    last;
  }

  # Increment the character count
  $count++;
}
