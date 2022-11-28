use warnings;
use strict;

my @d = (1..31);

foreach(@d){
    system ("mkdir -p $_/.gitkeepdir")
}