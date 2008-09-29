use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'scriptname',
    license             => 'perl',
    dist_author         => 'Humberto Massa <massa@cpan.org>',
    dist_version_from   => 'lib/scriptname.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'scriptname-*' ],
);

$builder->create_build_script();
