FROM heroku/heroku:20
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_1.7.6_linux_amd64.gz | zcat > /bin/horse
RUN chmod +x /bin/horse
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD horse server --auth $HORSE_AUTH --socks5 --reverse
