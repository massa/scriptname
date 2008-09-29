use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'scriptname',
    AUTHOR              => 'Humberto Massa <massa@cpan.org>',
    VERSION_FROM        => 'lib/scriptname.pm',
    ABSTRACT_FROM       => 'lib/scriptname.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'scriptname-*' },
);
