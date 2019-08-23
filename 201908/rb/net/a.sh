#!/usr/bin/expect
#タイムアウト
set timeout 5
# rsync 起動
spawn rsync -rltDvz --progress --partial --bwlimit=250 example.la:/mnt/comics/ /mnt/example.la
#パスワード入力
expect "internet@ex.io's password:"
send "PASS_WORD\n" # ここでパスワードを入れる
interact
