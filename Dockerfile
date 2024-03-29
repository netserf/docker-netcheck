FROM nginx:1.23.1

# Override the default nginx landing page
COPY static-html-directory /usr/share/nginx/html

RUN apt-get update && apt-get install -y \
    curl wget2 nmap ncat dnsutils iproute2 iputils-ping iputils-tracepath \
    tcptraceroute traceroute tcpdump net-tools iptraf-ng iperf3 iftop bmon \
    jq ldap-utils \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]

