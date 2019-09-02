#!/usr/bin/expect
set timeout 3
expect_user {
    -re ^abc.* {
        puts 'Ihello'
        exp_continue
    }

    -re ^a.*b$ {
        puts 'Iworld'
    }

    default {
        puts 'default'
    }
}

expect eof