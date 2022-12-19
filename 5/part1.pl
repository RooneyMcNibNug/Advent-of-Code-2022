use strict;
use warnings;
use experimental 'signatures';
use experimental 'lexical_subs';

@ARGV = "input.txt" unless @ARGV; # cool, I learned something new :)
my @stacks1;
my @stacks2;

while (<>) {
    last if /^\s*1/;
    my $i = 1;
    while (/(?:   |\[([A-Z])\]) ?/g) {
        unshift @{$stacks1 [$i]} => $1 if $1;
        unshift @{$stacks2 [$i]} => $1 if $1;
        $i ++;
    }
}

<>;

while (<>) {
    my ($amount, $from, $to) = /[0-9]+/g;
    push @{$stacks1 [$to]} => pop    @{$stacks1 [$from]} for 1 .. $amount;
    push @{$stacks2 [$to]} => splice @{$stacks2 [$from]},       - $amount;
}

print "Part 1: ", join "" => map {$$_ [-1]} @stacks1 [1 .. $#stacks1];
print "\n";
print "Part 2: ", join "" => map {$$_ [-1]} @stacks2 [1 .. $#stacks2];
print "\n";