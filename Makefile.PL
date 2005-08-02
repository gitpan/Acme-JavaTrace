#!/usr/bin/perl
use strict;
use ExtUtils::MakeMaker;
eval 'use ExtUtils::MakeMaker::Coverage';
WriteMakefile (
    'NAME' => 'Acme::JavaTrace', 
    'VERSION_FROM' => 'lib/Acme/JavaTrace.pm', 
    'PREREQ_PM' => {
        'Data::Dumper' => 0, 
    }, 
    'PL_FILES' => {}, 
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/Acme/JavaTrace.pm', 
       AUTHOR => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>') : ()),
);
