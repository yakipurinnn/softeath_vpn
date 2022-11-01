#参考: https://toshio-web.com/softether-vpn
#https://zenn.dev/seiwell/articles/e7729df2639f36
#https://toshio-web.com/softether-vpn#toc18

#secureNAT機能を有効化する

#docker image build -t ubuntu_vpn ./
#イメージ作成
#docker run --name ubuntu -v /root/projects/vpnServer/root:/root --cap-add NET_ADMIN --privileged -p 443:443 -p 500:500/udp -p 4500:4500/udp -p 5555:5555/tcp --rm -it ubuntu_vpn
#コンテナ起動後にbashを起動

FROM ubuntu:20.04

RUN apt-get -y update && apt-get install -y wget
RUN apt-get install -y make && apt-get install -y gcc 

COPY startup.sh /startup.sh

RUN chmod 744 /startup.sh

CMD ["/startup.sh"]
