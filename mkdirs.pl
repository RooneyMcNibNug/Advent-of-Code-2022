use warnings;
use strict;

my @d = (1..25);

foreach(@d){
    system ("mkdir -p $_/README.md")
}
