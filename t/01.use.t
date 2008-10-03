use Test::More tests => 2;

use scriptname 'lib';
use lib 'gaga';
BEGIN { ok $INC[1] eq scriptname::mydir.'/lib', 'lib in @INC' }
no scriptname 'lib';

ok $INC[1] ne scriptname::mydir.'/lib', 'lib not in @INC';

diag "Testing scriptname $scriptname::VERSION"
