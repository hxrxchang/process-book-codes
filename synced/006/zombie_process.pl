use strict;
use warnings;

my $pid = fork;

if ( $pid ) {
    print "$pid\n";

    # 無限ループに忙しくて子プロセスを wait してない
    while ( 1 ) {
        sleep;
    }
}
else {
    # 子プロセスは即死する
    exit;
}
