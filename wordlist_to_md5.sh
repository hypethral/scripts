#!bin/sh

for i in $(cat rockyou.txt); do echo -n "$i" | md5sum | tr -d " -" >> hashes; done
