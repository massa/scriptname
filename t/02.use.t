use Test::More tests => 4;

use scriptname lib => '../mylib';
use lib 'gaga';
BEGIN { ok $INC[1] =~ m:/mylib$:, 'mylib in @INC' }
no scriptname lib => '../mylib';

ok $INC[1] !~ m:/mylib$:, 'mylib not in @INC';
ok scriptname::mybase eq '01.use', 'mybase';
ok $0 =~ /01\.use\.t$/, "\$0 = '$0'";

diag "Testing scriptname $scriptname::VERSION"