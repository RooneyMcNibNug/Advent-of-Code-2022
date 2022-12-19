use strict;
use warnings;

@ARGV = "input.txt" unless @ARGV;

$_ = <>;
/(.{14})(??{$1 =~ m{(.).*\1} ? "(*FAIL)" : ""})/ # regex calculator used..
                  and print "Part 2: ", $+ [-1], "\n";