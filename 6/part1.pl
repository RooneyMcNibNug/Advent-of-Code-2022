use strict;
use warnings;

open(my $f, "<", "input.txt") or die "Failed to open input file: $!";
my $input = <$f>;

# Initialize a counter to keep track of the number of characters processed
my $count = 0;

# Iterate through the datastream, four characters at a time
for (my $i = 0; $i < length($input) - 3; $i++) {
  my $char1 = substr($input, $i, 1);
  my $char2 = substr($input, $i + 1, 1);
  my $char3 = substr($input, $i + 2, 1);
  my $char4 = substr($input, $i + 3, 1);

  # If the four characters are all different, print the number of characters processed and exit the loop
  if ($char1 ne $char2 && $char1 ne $char3 && $char1 ne $char4 && $char2 ne $char3 && $char2 ne $char4 && $char3 ne $char4) {
    print $count + 4;
    last;
  }

  # Increment the character count
  $count++;
}
