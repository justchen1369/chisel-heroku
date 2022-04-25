FROM heroku/heroku:20
RUN curl -sSL https://github.com/10maurycy10/chisel-heroku/releases/download/dummy/horse.gz | zcat > /bin/horse
RUN chmod +x /bin/horse
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD horse server --auth $HORSE_AUTH --socks5 --reverse
