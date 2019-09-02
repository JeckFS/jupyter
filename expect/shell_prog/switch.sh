#!/usr/bin/expect

set timeout 1
set arg [lindex $argv 0]

switch $arg {
    "apple" { puts "this is an apple!"}
    "banana" { pust "this is a banana"}
    default { puts "other"}
}