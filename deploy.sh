#! /bin/bash
set -x

cd /Users/kpf/gitbook/kubernetes/
gitbook build # 生成/Users/kpf/gitbook/kubernetes/_book目录

# 将_code复制到/Users/kpf/Projects/github/kubernetes/下面
cp -r /Users/kpf/gitbook/kubernetes/_book/* /Users/kpf/Projects/github/kubernetes/
cd /Users/kpf/Projects/github/kubernetes/

# 提交代码到master分支
git add . && git commit -m "update book" && git push
echo "发布成功\n"