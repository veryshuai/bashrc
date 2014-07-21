#!/bin/sh
# This script checks my gmail -- careful with plaintext password!

curl -u david.jinkins "https://mail.google.com/mail/feed/atom/important" | tr -d '\n' | awk -F '<entry>' '{for (i=2; i<=NF; i++) {print $i}}' | perl -pe 's/^<title>(.*)<\/title>.*?<name>(.*?)<\/name>.*$/$2 - $1/'

