#!/usr/bin/expect
set timeout 15 
exec git add .
exec git commit -m "jupyter笔记"
spawn git push origin master
expect "Username for"
send JeckFS\n
expect "Password for"
send "12236.yfs"
send \n

exec rm -f jindu
exec bash display_output.sh
expect {
    % {
        puts "$expect_out(buffer)"
        exec echo $expect_out(buffer) >> jindu
        exp_continue
    }
    eof {
        exec echo "上传完毕！！！" >> jindu
    }
    timeout {
        puts "==> time out $expect_out(buffer)"
    }
}
exec echo "完美！！！" >> jindu