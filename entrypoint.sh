#!/bin/sh
mkdir -p ~/.ssh &&
echo "$SSH_KEY_PRIVATE" > ~/.ssh/id_rsa && \
chmod 600 /root/.ssh/id_rsa && \
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config && \
echo -e "Host gitlab.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config && \
mkdir pages && \
hugo  --destination=pages --baseURL=https://qwe && \
mv .git pages && \
cd pages && \
git switch pages && \
git config --global user.email "nezlobin118@gmail.com" && \
git config --global user.name "OldTyT" && \
git commit -m "chore: auto generate" && \
git push origin pages
