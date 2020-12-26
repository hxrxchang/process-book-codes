use strict;
use warnings;

print "forking...\n";

# forkシステムコールを呼び出す
my $pid = fork;

# forkに失敗すると返り値はundef
die "fork failed." unless defined $pid;

# ここに来てるということは、正常にプロセスが複製された。
# この時点で親プロセスと子プロセスが *別々の環境で*
# 同時にこのプログラムを実行していることになる。
print "forked!\n";

# forkで生成された子プロセスでは、forkの返り値が 0 となる
# 親プロセスでは、生成された子プロセスのpidが入ってくる
if ($pid == 0){
    #子プロセスはこっちを実行する

    # execシステムコールで、perlのプロセスをrubyのプロセスに書き換えてしまう！
    exec "ruby -e 'loop do;sleep;end'";
}
else{
    #親プロセスはこっちを実行する

    #子プロセスが終了するのを待つ
    waitpid($pid,0);
}
