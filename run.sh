export http_proxy=http://192.168.17.1:10809 && export https_proxy=http://192.168.17.1:10809

nohup apt install -y build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses-dev libssl-dev python3-distutils rsync unzip zlib1g-dev file wget netcat tree libpcre3 libpcre3-dev swig > install.log 2>&1 &

nohup make download -j8 > ../build.log 2>&1 &

nohup make download -j8 > ../build.log 2>&1 &

nohup tail -f /root/build.log | nc seashells.io 1337 > server.log 2>&1 &

nohup make -j4 V=s > ../build.log 2>&1 &
