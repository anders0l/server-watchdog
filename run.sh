#!/usr/bin/expect

set timeout 20

set USER [lindex $argv 0]
set HOST [lindex $argv 1]
set PASSWORD [lindex $argv 2]

spawn ping -c 1 8.8.8.8;
# not valid url for testing
#spawn ping -c 1 192.0.0.0;
expect  {
	 "time=" {puts "\nPong received";exit 1}
	 timeout {puts "\nTimeout happened"}
	 "100.0% packet loss" {puts "\nPong timeout";exp_continue}
}

eval spawn ssh -o StrictHostKeyChecking=no $USER@$HOST reboot
# valid command to test
#eval spawn ssh -o StrictHostKeyChecking=no $USER@$HOST ls /
expect "password:"
send "$PASSWORD\r";
interact
