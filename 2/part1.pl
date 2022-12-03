use strict;
use warnings;

# W = Win
# L = Lose
# D = Draw

my %score1_possibility = (
    AX => 4, # rock vs. rock
    AY => 8, # rock vs. paper
    AZ => 3, # rock vs. scissors
    BX => 1, # paper vs. rock
    BY => 5, # paper vs. paper
    BZ => 9, # paper vs. scissors
    CX => 7, # scissors vs. rock
    CY => 2, # scissors vs. paper
    CZ => 6, # scissors vs. scissors
);

my %score2_possibility = (
    AX => 3, # rock vs. scissors - L
    AY => 4, # rock vs. rock - D
    AZ => 8, # rock vs. paper - W
    BX => 1, # paper vs. rock - L
    BY => 5, # paper vs. paper - D
    BZ => 9, # paper vs. scissors - W
    CX => 2, # scissors vs. paper - L
    CY => 6, # scissors vs. scissors - D
    CZ => 7, # scissors vs. rock - W
);

open (my $f, "<", "input.txt") or die "Failed to open your input file: $!\n";

my $score1 = 0; my $score2 = 0;

while(<$f>) {
    chomp;
    my $line = $_;
    $line =~ s/\s+//;
    $score1 += $score1_possibility{$line}; $score2 += $score2_possibility{$line};
}

print "First total score is:  $score1\n";
print "Second total score is: $score2\n";

close($f);