
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.029.
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Format a catalog of plugin modules",
  "AUTHOR" => "Christopher J. Madsen <perl\@cjmweb.net>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Pod-PluginCatalog",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.010",
  "NAME" => "Pod::PluginCatalog",
  "PREREQ_PM" => {
    "Encode" => 0,
    "Moose" => 0,
    "Pod::Elemental" => 0,
    "Pod::Elemental::Selectors" => 0,
    "Pod::Elemental::Transformer::Nester" => 0,
    "Text::Template" => 0,
    "autodie" => 0,
    "namespace::autoclean" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "0.02",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Encode" => 0,
  "ExtUtils::MakeMaker" => 0,
  "Moose" => 0,
  "Pod::Elemental" => 0,
  "Pod::Elemental::Selectors" => 0,
  "Pod::Elemental::Transformer::Nester" => 0,
  "Test::More" => 0,
  "Text::Template" => 0,
  "autodie" => 0,
  "namespace::autoclean" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



