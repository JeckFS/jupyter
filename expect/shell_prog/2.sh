#!/usr/bin/expect
set timeout 6
expect {
    "hi" {puts "input hi"; exp_continue}
    "hello" {puts "input hello"; exp_continue}
    default {puts default}
}