use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Math::RootFind',
    AUTHOR              => 'Spencer Ogden <spencer@spencerogden.com>',
    VERSION_FROM        => 'lib/Math/RootFind.pm',
    ABSTRACT_FROM       => 'lib/Math/RootFind.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Math-RootFind-*' },
);

sub MY::postamble {
    return <<'EOT'
testcover:
	cover -delete
	HARNESS_PERL_SWITCHES=-MDevel::Cover make test
EOT
}
