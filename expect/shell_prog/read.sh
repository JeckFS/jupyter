#!/usr/bin/expect

set timeout 3
expect_user {
    -re hello {
        puts 'Ihello'
        exp_continue
    }
    -re world {
        puts 'Iworld'
    }
    default {
        puts 'default'
    }
}
expect eof