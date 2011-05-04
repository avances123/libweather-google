#!/bin/perl
use Weather::Google;
use encoding 'utf8';
use Data::Dumper;

my $gw = new Weather::Google('Madrid, Spain',{language => 'es'});
my @info = $gw->current('temp_c','humidity','wind_condition');
print Dumper @info;

print "Today's high: ", $gw->forecast(0,'condition');
