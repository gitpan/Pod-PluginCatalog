
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Format a catalog of plugin modules",
  "AUTHOR" => "Christopher J. Madsen <perl\@cjmweb.net>",
  "BUILD_REQUIRES" => {
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Pod-PluginCatalog",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
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
  "VERSION" => "0.01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



