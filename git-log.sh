#!/bin/bash
AUTHOR="yuanpengfei03"

echo "提交统计 for $AUTHOR"
echo "提交数:"
git shortlog -sn --author="$AUTHOR"

echo "代码变更统计:"
git log --author="$AUTHOR" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "添加行数: %s, 删除行数: %s, 总变更行数: %s\n", add, subs, loc }'
