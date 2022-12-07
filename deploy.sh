# 发生任何错误时终止
set -e

# 构建
npm run build-only

# 进入输出产物文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你要部署在 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# 如果你要部署在 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:chunxiao01/COVID-19.git main:gh-pages

cd -


# 执行deploy.sh
# 切换到git bash 命令行 执行 ./deploy.sh
