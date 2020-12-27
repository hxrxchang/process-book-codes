use strict;
use warnings;

my $pid = fork;

die "fork failed" unless defined $pid;

if ($pid) {
    # 親プロセス
    sleep;
}
else {
    # 子プロセス

    # setpgidシステムコールを
    # 引数なしで呼び出すと、
    # 自分のプロセスグループを作ってそこのリーダーになる
    setpgrp;
    sleep;
}
