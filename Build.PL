#!/usr/bin/perl
use Module::Build;
Module::Build->new(
    'module_name' => 'Acme::JavaTrace', 
    'license' => 'perl', 
    'requires' => {
    }, 
)->create_build_script;
