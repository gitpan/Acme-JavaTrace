#!/usr/bin/perl
use ExtUtils::MakeMaker;
WriteMakefile (
    'NAME' => 'Acme::JavaTrace', 
    'VERSION_FROM' => 'lib/Acme/JavaTrace.pm', 
    'PREREQ_PM' => {
    }, 
    'PL_FILES' => {}, 
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/Acme/JavaTrace.pm', 
       AUTHOR => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>') : ()),
);
