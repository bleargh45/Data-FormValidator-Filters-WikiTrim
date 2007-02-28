use strict;
use warnings;
use Module::Build;

Module::Build->new(
    'module_name'       => 'Data::FormValidator::Filters::WikiTrim',
    'license'           => 'perl',
    'dist_author'       => 'Graham TerMarsch (cpan@howlingfrog.com)',
    'requires'          => {
        'Data::FormValidator'   => 4,
        },
    )->create_build_script();
