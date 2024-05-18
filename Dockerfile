# ref. Dockerを使ってMySQLの環境を構築してみました
# https://zenn.dev/bloomer/articles/7c879ab2a67abc
FROM mysql:8.0-debian
RUN apt-get update && \
    apt-get install -y locales
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
