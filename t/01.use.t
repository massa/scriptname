use Test::More tests => 2;

use scriptname 'lib';
use lib 'gaga';
BEGIN { ok $INC[1] =~ m:/lib$:, 'lib in @INC' }
no scriptname 'lib';

ok $INC[1] !~ m:/mylib$:, 'lib not in @INC';

diag "Testing scriptname $scriptname::VERSION"
