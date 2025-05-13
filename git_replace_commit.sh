#!/bin/sh

git filter-branch --msg-filter '
# 将commit message中的feat开头替换为feature
# ^表示限定行首
# 在最后添加gi忽略大小写
sed "s/^feat/feature/"
' --tag-name-filter cat -- --feature/test2