use strict;
use warnings;

my $pid = fork;

if ($pid) {
    #親プロセス
    sleep 1;
    exit;
}
else {
    #子プロセス
    print getppid."\n";
    sleep 2;
    print getppid."\n";
}
