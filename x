{
  "log": {
    "level": "debug",
    "timestamp": true
  },
  "dns": {
    "servers": [
      {
        "tag": "proxyDns",
        "address": "https://8.8.8.8/dns-query",
        "detour": "proxy"
      },
      {
        "tag": "localDns",
        "address": "https://1.12.12.12/dns-query",
        "detour": "direct"
      },
      {
        "tag": "block",
        "address": "rcode://success"
      }
    ],
    "rules": [
      {
        "domain": [
          "ghproxy.com",
          "cdn.jsdelivr.net",
          "testingcf.jsdelivr.net"
        ],
        "server": "localDns"
      },
      {
        "rule_set": "geosite-category-ads-all",
        "server": "block"
      },
      {
        "outbound": "any",
        "server": "localDns",
        "disable_cache": true
      },
      {
        "rule_set": "geosite-cn",
        "server": "localDns"
      },
      {
        "clash_mode": "direct",
        "server": "localDns"
      },
      {
        "clash_mode": "global",
        "server": "proxyDns"
      },
      {
        "rule_set": "geosite-geolocation-!cn",
        "server": "proxyDns"
      }
    ],
    "strategy": "ipv4_only"
  },
  "inbounds": [
    {
      "type": "tun",
      "inet4_address": "172.19.0.1/30",
      "mtu": 9000,
      "auto_route": true,
      "strict_route": true,
      "sniff": true,
      "endpoint_independent_nat": false,
      "stack": "system",
      "platform": {
        "http_proxy": {
          "enabled": true,
          "server": "127.0.0.1",
          "server_port": 2080
        }
      }
    },
    {
      "type": "mixed",
      "listen": "127.0.0.1",
      "listen_port": 2080,
      "sniff": true,
      "users": []
    }
  ],
  "outbounds": [
    {
      "tag": "proxy",
      "type": "selector",
      "outbounds": [
        "auto",
        "direct",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua"
      ]
    },
    {
      "tag": "🤖 OpenAI",
      "type": "selector",
      "outbounds": [
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🌌 Google",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "📟 Telegram",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🐦 Twitter",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "👤 Facebook",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🛍️ Amazon",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🍎 Apple",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🧩 Microsoft",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🎮 Game",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "📺 Bilibili",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点"
      ]
    },
    {
      "tag": "🎬 MediaVideo",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🌏 !cn",
      "type": "selector",
      "outbounds": [
        "direct",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇸🇬 狮城节点",
        "🇯🇵 日本节点",
        "🇺🇸 美国节点",
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua",
        "✈️ 其他节点"
      ]
    },
    {
      "tag": "🇭🇰 香港节点",
      "type": "selector",
      "outbounds": [
        "🇭🇰 hk",
        "🇭🇰 hk1",
        "🇭🇰 hk 2",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "proxy"
      ]
    },
    {
      "tag": "🇹🇼 台湾节点",
      "type": "selector",
      "outbounds": [
        "🇹🇼 tw h2",
        "🇹🇼 tw 1",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "proxy"
      ]
    },
    {
      "tag": "🇸🇬 狮城节点",
      "type": "selector",
      "outbounds": [
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "proxy"
      ]
    },
    {
      "tag": "🇯🇵 日本节点",
      "type": "selector",
      "outbounds": [
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "proxy"
      ]
    },
    {
      "tag": "🇺🇸 美国节点",
      "type": "selector",
      "outbounds": [
        "🇺🇸 us",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇺🇸 ccws us",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "🇺🇸 US-CC1-xTom",
        "proxy"
      ]
    },
    {
      "tag": "✈️ 其他节点",
      "type": "selector",
      "outbounds": [
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "🇺🇸 ccws us",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "🇺🇸 US-CC1-xTom",
        "proxy"
      ]
    },
    {
      "tag": "🌏 cn",
      "type": "selector",
      "outbounds": [
        "direct",
        "proxy"
      ]
    },
    {
      "tag": "🛑 AdBlock",
      "type": "selector",
      "outbounds": [
        "block",
        "direct"
      ]
    },
    {
      "tag": "auto",
      "type": "urltest",
      "outbounds": [
        "rn tuic",
        "tuicv5",
        "stchy2",
        "rnhy2",
        "🇹🇼 tw h2",
        "🇭🇰 hk",
        "🇺🇸 us",
        "🇩🇪 DE",
        "🇭🇰 hk1",
        "🇹🇼 tw 1",
        "🇭🇰 hk 2",
        "ssv2ray",
        "ssv2ray_shadowtls",
        "ss",
        "自动最优线路(hy2)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(hy2)",
        "🇭🇰 2香港集群-全网优化(hy2)",
        "🇹🇼 4台湾-联通优化(hy2)",
        "🇹🇼 5台湾-联通/移动(hy2)",
        "🇯🇵 6日本-东部优化(hy2)",
        "🇯🇵 7日本-联通/移动(hy2)",
        "🇰🇷 8韩国集群-全网优化(hy2)",
        "🇰🇷 9韩国-全网优化(hy2)",
        "🇰🇷 25韩国-全网优化(hy2)",
        "🇯🇵 10日本-全网优化(hy2)",
        "🇺🇸 11美国-全网优化(hy2)",
        "🇺🇸 12美国凤凰城-全网优化(hy2)",
        "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
        "🇮🇳 14印度-移动/南方联通(hy2)",
        "🇸🇬 15新加坡-全网优化(hy2)",
        "🇸🇬 24新加坡-联通/移动(hy2)",
        "🇩🇪 16德国-电信/联通(hy2)",
        "🇬🇧 17英国-全网优化(hy2)",
        "🇨🇦 18加拿大-全网优化(hy2)",
        "🇦🇺 19悉尼-全网优化(hy2)",
        "🇧🇷 20巴西-全网优化(hy2)",
        "🇨🇱 21智利-全网优化(hy2)",
        "🇹🇷 22土耳其-全网优化(hy2)",
        "🇫🇷 23法国-全网优化(hy2)",
        "自动最优线路(新协议)-网址: dg1.top",
        "🇭🇰 1香港集群-全网优化(新协议)",
        "🇭🇰 2香港集群-全网优化(新协议)",
        "🇭🇰 2香港-专线(iOS优化)",
        "🇹🇼 4台湾-联通优化(新协议)",
        "🇹🇼 5台湾-联通/移动(新协议)",
        "🇯🇵 6日本-东部优化(新协议)",
        "🇯🇵 7日本-联通/移动(新协议)",
        "🇰🇷 8韩国集群-全网优化(新协议)",
        "🇰🇷 9韩国-全网优化(新协议)",
        "🇰🇷 9韩国-专线(iOS优化)",
        "🇰🇷 25韩国-ChatGPT(iOS优化)",
        "🇰🇷 25韩国-全网优化(新协议)",
        "🇯🇵 10日本-全网优化(新协议)",
        "🇯🇵 10日本-专线(iOS优化)",
        "🇺🇸 11美国-全网优化(新协议)",
        "🇺🇸 11美国-全网优化(iOS优化)",
        "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
        "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
        "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
        "🇮🇳 14印度-移动/南方联通(新协议)",
        "🇸🇬 15新加坡-全网优化(新协议)",
        "🇸🇬 15新加坡-专线(iOS优化)",
        "🇸🇬 24新加坡-联通/移动(新协议)",
        "🇩🇪 16德国-电信/联通(新协议)",
        "🇬🇧 17英国-ChatGPT(新协议)",
        "🇨🇦 18加拿大-ChatGPT(新协议)",
        "🇦🇺 19悉尼-ChatGPT(新协议)",
        "🇧🇷 20巴西-ChatGPT(新协议)",
        "🇨🇱 21智利-ChatGPT(新协议)",
        "🇹🇷 22土耳其-电信/联通(新协议)",
        "🇫🇷 23法国-全网优化(新协议)",
        "ygkkk-vm-ws-clone gc",
        "ygkkk-vm-ws-clone gct",
        "cf",
        "cfv6",
        "cff",
        "cff-v6",
        "cft",
        "cft-v6",
        "cf1",
        "cff1",
        "cft1",
        "cff2",
        "cfffd1",
        "ygkkk-vl-reality",
        "ygkkk-vm-ws",
        "ygkkk-vm-argo-clone",
        "ygkkk-vm-ws-clone",
        "ygkkk-vm-ws-clone v6",
        "ygkkk-vm-argo",
        "ygkkk-vm-ws-clone fd2",
        "🇰🇷 ygkkk-vm-argoa KR",
        "🇰🇷 ygkkk-vl-realitya KR",
        "🇰🇷 awswss KR",
        "rnws",
        "rnwss",
        "rnws1",
        "rnws2",
        "rnws3",
        "rnws4",
        "rnws5",
        "🇸🇬 rnwsgc",
        "🇸🇬 rnwsgct",
        "🇸🇬 rnwsgct1",
        "🇸🇬 rnwsgc1",
        "🇸🇬 rnwsgct1-1",
        "rngct",
        "rngc",
        "ygkkk-vm-ws-clone fd22",
        "ygkkk-vm-ws-clone fd23",
        "ygkkk-vm-ws-clone fd24",
        "ygkkk-vm-ws-clone fd25",
        "ygkkk-vm-ws-clone fd26",
        "ygkkk-vm-ws-clone fd27",
        "ygkkk-vm-ws-clone fd28",
        "ygkkk-vm-ws-clone fd29",
        "ygkkk-vm-ws-clone fd210",
        "ygkkk-vm-ws-clone fd211",
        "ygkkk-vm-ws-clone fd212",
        "ygkkk-vm-ws-clone fd213",
        "ygkkk-vm-ws-clone fd214",
        "ygkkk-vm-argo2",
        "ygkkk-vm-argo3",
        "ygkkk-vm-argo4",
        "ygkkk-vm-argo5",
        "ygkkk-vm-argo6",
        "🇺🇸 ccws us",
        "ygkkk-vm-argocc",
        "ygkkk-vm-wscc",
        "ygkkk-vm-wscc-cfd",
        "ygkkk-vm-wscc-gc",
        "ccws-gc",
        "ygkkk-vm-wscc-gct",
        "ccws-gct",
        "🇺🇸 ccwss us",
        "🇺🇸 ygkkk-vl-reality us",
        "ygkkk-vm-argocc2",
        "ygkkk-vm-argocc3",
        "ygkkk-vm-argocc4",
        "ygkkk-vm-argocc5",
        "ygkkk-vm-argocc6",
        "ygkkk-vm-argocc7",
        "ygkkk-vm-argocc8",
        "ygkkk-vm-argocc9",
        "ygkkk-vm-wscc-cfd2",
        "ygkkk-vm-wscc-cfd3",
        "ygkkk-vm-wscc-cfd4",
        "ygkkk-vm-wscc-cfd5",
        "ygkkk-vm-wscc-cfd6",
        "ygkkk-vm-wscc-cfd7",
        "ygkkk-vm-wscc-cfd8",
        "ygkkk-vm-wscc-cfd9",
        "ygkkk-vm-wscc-cfd10",
        "🇸🇬 rnwsgct12",
        "🇸🇬 rnwsgct13",
        "🇸🇬 rnwsgct14",
        "cff-clone",
        "rnws12",
        "rnws13",
        "rnws14",
        "rnws15",
        "rnws16",
        "ygkkk-vm-wscc2",
        "ygkkk-vm-wscc3",
        "ygkkk-vm-wscc4",
        "cfffd12",
        "01ccs",
        "02ccs",
        "03ccs",
        "1ccs-ws",
        "CC1-01",
        "CC1-02",
        "CC1-03",
        "CC1-ASN31898",
        "🇰🇷 CC1-KR-30010",
        "CC1-ws-01",
        "CC1-ws-02",
        "CC2-WS",
        "CC3-ChatGPT",
        "CC3-ChatGPT- 30010",
        "CC3-WS ChatGPT",
        "ChatGPT-chigua 01",
        "ChatGPT-chigua 02",
        "ChatGPT-chigua-30010",
        "🇺🇸 US-CC1-xTom",
        "xTom_ChatGPT-chigua"
      ],
      "url": "http://www.gstatic.com/generate_204",
      "interval": "10m",
      "tolerance": 50
    },
    {
      "type": "direct",
      "tag": "direct"
    },
    {
      "type": "dns",
      "tag": "dns-out"
    },
    {
      "type": "block",
      "tag": "block"
    },
    {
      "tag": "rn tuic",
      "type": "tuic",
      "server": "rn.yicanny.com",
      "server_port": 47777,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "password": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "zero_rtt_handshake": false,
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "alpn": [
          "h3"
        ],
        "insecure": true,
        "server_name": null
      }
    },
    {
      "tag": "tuicv5",
      "type": "tuic",
      "server": "108.165.169.213",
      "server_port": 8443,
      "uuid": "8029997D-2954-4125-9743-EA75F88C0C15",
      "password": "TUIC",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "zero_rtt_handshake": false,
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "alpn": [
          "h3"
        ],
        "insecure": true,
        "server_name": "cdn.divineengine.net"
      }
    },
    {
      "tag": "stchy2",
      "type": "hysteria2",
      "server": "108.165.169.213",
      "server_port": 6443,
      "password": "hysteria",
      "up_mbps": 60,
      "down_mbps": 300,
      "tls": {
        "enabled": true,
        "server_name": "cdn.divineengine.net",
        "insecure": true,
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "rnhy2",
      "type": "hysteria2",
      "server": "206.217.143.7",
      "server_port": 47976,
      "password": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "up_mbps": 60,
      "down_mbps": 300,
      "tls": {
        "enabled": true,
        "server_name": "rn.yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "🇹🇼 tw h2",
      "type": "hysteria2",
      "server": "3.39.194.232",
      "server_port": 40795,
      "password": "c8068e04-e3d7-4e89-a551-311ad762b87f",
      "up_mbps": 60,
      "down_mbps": 300,
      "tls": {
        "enabled": true,
        "server_name": "aws.yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "🇭🇰 hk",
      "type": "tuic",
      "server": "aws.yicanny.com",
      "server_port": 44645,
      "uuid": "c8068e04-e3d7-4e89-a551-311ad762b87f",
      "password": "c8068e04-e3d7-4e89-a551-311ad762b87f",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "zero_rtt_handshake": false,
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "alpn": [
          "h3"
        ],
        "insecure": true,
        "server_name": null
      }
    },
    {
      "tag": "🇺🇸 us",
      "type": "hysteria2",
      "server": "74.48.95.50",
      "server_port": 31108,
      "password": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "up_mbps": 60,
      "down_mbps": 300,
      "tls": {
        "enabled": true,
        "server_name": "yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "🇩🇪 DE",
      "type": "tuic",
      "server": "yicanny.com",
      "server_port": 22785,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "password": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "congestion_control": "bbr",
      "udp_relay_mode": "native",
      "zero_rtt_handshake": false,
      "heartbeat": "10s",
      "tls": {
        "enabled": true,
        "alpn": [
          "h3"
        ],
        "insecure": true,
        "server_name": null
      }
    },
    {
      "tag": "🇭🇰 hk1",
      "type": "hysteria",
      "server": "hk2.yicanny.com",
      "server_port": 20666,
      "up_mbps": 19,
      "down_mbps": 110,
      "auth_str": "freekkk",
      "tls": {
        "enabled": true,
        "server_name": "hk2.yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "🇹🇼 tw 1",
      "type": "hysteria",
      "server": "tw2.yicanny.com",
      "server_port": 20777,
      "up_mbps": 19,
      "down_mbps": 110,
      "auth_str": "freekkk",
      "tls": {
        "enabled": true,
        "server_name": "tw2.yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "🇭🇰 hk 2",
      "type": "hysteria",
      "server": "yicanny.com",
      "server_port": 20167,
      "up_mbps": 19,
      "down_mbps": 110,
      "auth_str": "freekkk",
      "tls": {
        "enabled": true,
        "server_name": "yicanny.com",
        "alpn": [
          "h3"
        ]
      }
    },
    {
      "tag": "ssv2ray",
      "type": "shadowsocks",
      "server": "50.114.242.11",
      "server_port": 8443,
      "method": "aes-256-gcm",
      "password": "duckduckgo",
      "detour": "ssv2ray_shadowtls"
    },
    {
      "tag": "ssv2ray_shadowtls",
      "type": "shadowtls",
      "version": 3,
      "password": "duckduckgo",
      "tls": {
        "enabled": true,
        "server_name": "cloud.tencent.com"
      }
    },
    {
      "tag": "ss",
      "type": "shadowsocks",
      "server": "ss.a.nekoe.eu.org",
      "server_port": 6000,
      "method": "aes-256-cfb",
      "password": "https://t.me/nekoemtp"
    },
    {
      "type": "hysteria2",
      "tag": "自动最优线路(hy2)-网址: dg1.top",
      "server": "cluster.prometheusnet01.xyz",
      "server_port": 21771,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇭🇰 1香港集群-全网优化(hy2)",
      "server": "1hk.prometheusnet01.xyz",
      "server_port": 23791,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇭🇰 2香港集群-全网优化(hy2)",
      "server": "2hk.prometheusnet01.xyz",
      "server_port": 27383,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇹🇼 4台湾-联通优化(hy2)",
      "server": "4tw.prometheusnet01.xyz",
      "server_port": 35870,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇹🇼 5台湾-联通/移动(hy2)",
      "server": "5tw.prometheusnet01.xyz",
      "server_port": 57020,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇯🇵 6日本-东部优化(hy2)",
      "server": "6jp.prometheusnet01.xyz",
      "server_port": 36561,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇯🇵 7日本-联通/移动(hy2)",
      "server": "7jp.prometheusnet01.xyz",
      "server_port": 26027,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇰🇷 8韩国集群-全网优化(hy2)",
      "server": "8kr.prometheusnet01.xyz",
      "server_port": 35712,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇰🇷 9韩国-全网优化(hy2)",
      "server": "9kr.prometheusnet01.xyz",
      "server_port": 27666,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇰🇷 25韩国-全网优化(hy2)",
      "server": "25kr.prometheusnet01.xyz",
      "server_port": 25643,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇯🇵 10日本-全网优化(hy2)",
      "server": "10jp.prometheusnet01.xyz",
      "server_port": 39007,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇺🇸 11美国-全网优化(hy2)",
      "server": "11us.prometheusnet01.xyz",
      "server_port": 38656,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇺🇸 12美国凤凰城-全网优化(hy2)",
      "server": "12us.prometheusnet01.xyz",
      "server_port": 32135,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇦🇪 13迪拜-电信/移动/南方联通(hy2)",
      "server": "13dxb.prometheusnet01.xyz",
      "server_port": 24111,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇮🇳 14印度-移动/南方联通(hy2)",
      "server": "14in.prometheusnet01.xyz",
      "server_port": 24770,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇸🇬 15新加坡-全网优化(hy2)",
      "server": "15sg.prometheusnet01.xyz",
      "server_port": 27870,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇸🇬 24新加坡-联通/移动(hy2)",
      "server": "24sg.prometheusnet01.xyz",
      "server_port": 24359,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇩🇪 16德国-电信/联通(hy2)",
      "server": "16de.prometheusnet01.xyz",
      "server_port": 36999,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇬🇧 17英国-全网优化(hy2)",
      "server": "17uk.prometheusnet01.xyz",
      "server_port": 25899,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇨🇦 18加拿大-全网优化(hy2)",
      "server": "18ca.prometheusnet01.xyz",
      "server_port": 21496,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇦🇺 19悉尼-全网优化(hy2)",
      "server": "19sdy.prometheusnet01.xyz",
      "server_port": 36269,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇧🇷 20巴西-全网优化(hy2)",
      "server": "20br.prometheusnet01.xyz",
      "server_port": 28248,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇨🇱 21智利-全网优化(hy2)",
      "server": "21chi.prometheusnet01.xyz",
      "server_port": 34043,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇹🇷 22土耳其-全网优化(hy2)",
      "server": "22tr.prometheusnet01.xyz",
      "server_port": 58346,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇷 23法国-全网优化(hy2)",
      "server": "23fr.prometheusnet01.xyz",
      "server_port": 37064,
      "password": "8e431636-d42f-470f-9f67-11895d18d19a",
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "自动最优线路(新协议)-网址: dg1.top",
      "server": "cluster.prometheusnet01.xyz",
      "server_port": 10257,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇭🇰 1香港集群-全网优化(新协议)",
      "server": "1hk.prometheusnet01.xyz",
      "server_port": 9650,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇭🇰 2香港集群-全网优化(新协议)",
      "server": "2hk.prometheusnet01.xyz",
      "server_port": 16664,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇭🇰 2香港-专线(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17880,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇹🇼 4台湾-联通优化(新协议)",
      "server": "4tw.prometheusnet01.xyz",
      "server_port": 6327,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇹🇼 5台湾-联通/移动(新协议)",
      "server": "5tw.prometheusnet01.xyz",
      "server_port": 41603,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇯🇵 6日本-东部优化(新协议)",
      "server": "6jp.prometheusnet01.xyz",
      "server_port": 15168,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇯🇵 7日本-联通/移动(新协议)",
      "server": "7jp.prometheusnet01.xyz",
      "server_port": 16144,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇰🇷 8韩国集群-全网优化(新协议)",
      "server": "8kr.prometheusnet01.xyz",
      "server_port": 8861,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇰🇷 9韩国-全网优化(新协议)",
      "server": "9kr.prometheusnet01.xyz",
      "server_port": 19002,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇰🇷 9韩国-专线(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17881,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "shadowsocks",
      "tag": "🇰🇷 25韩国-ChatGPT(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17885,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇰🇷 25韩国-全网优化(新协议)",
      "server": "25kr.prometheusnet01.xyz",
      "server_port": 11515,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇯🇵 10日本-全网优化(新协议)",
      "server": "10jp.prometheusnet01.xyz",
      "server_port": 18539,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇯🇵 10日本-专线(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17882,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇺🇸 11美国-全网优化(新协议)",
      "server": "11us.prometheusnet01.xyz",
      "server_port": 11895,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇺🇸 11美国-全网优化(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17884,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇺🇸 12美国凤凰城-ChatGPT(新协议)",
      "server": "12us.prometheusnet01.xyz",
      "server_port": 6351,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇺🇸 12美国凤凰城-ChatGPT(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17886,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇦🇪 13迪拜-电信/移动/南方联通(新协议)",
      "server": "13dxb.prometheusnet01.xyz",
      "server_port": 6181,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇮🇳 14印度-移动/南方联通(新协议)",
      "server": "14in.prometheusnet01.xyz",
      "server_port": 5446,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇸🇬 15新加坡-全网优化(新协议)",
      "server": "15sg.prometheusnet01.xyz",
      "server_port": 11829,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "shadowsocks",
      "tag": "🇸🇬 15新加坡-专线(iOS优化)",
      "server": "dnsmart.dg-cdn.mob.networklinkpro.com",
      "server_port": 17883,
      "method": "chacha20-ietf-poly1305",
      "password": "8e431636-d42f-470f-9f67-11895d18d19a"
    },
    {
      "type": "hysteria",
      "tag": "🇸🇬 24新加坡-联通/移动(新协议)",
      "server": "24sg.prometheusnet01.xyz",
      "server_port": 14817,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇩🇪 16德国-电信/联通(新协议)",
      "server": "16de.prometheusnet01.xyz",
      "server_port": 5289,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇬🇧 17英国-ChatGPT(新协议)",
      "server": "17uk.prometheusnet01.xyz",
      "server_port": 18481,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇨🇦 18加拿大-ChatGPT(新协议)",
      "server": "18ca.prometheusnet01.xyz",
      "server_port": 18920,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇦🇺 19悉尼-ChatGPT(新协议)",
      "server": "19sdy.prometheusnet01.xyz",
      "server_port": 11161,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇧🇷 20巴西-ChatGPT(新协议)",
      "server": "20br.prometheusnet01.xyz",
      "server_port": 9026,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇨🇱 21智利-ChatGPT(新协议)",
      "server": "21chi.prometheusnet01.xyz",
      "server_port": 8937,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇹🇷 22土耳其-电信/联通(新协议)",
      "server": "22tr.prometheusnet01.xyz",
      "server_port": 49828,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "type": "hysteria",
      "tag": "🇫🇷 23法国-全网优化(新协议)",
      "server": "23fr.prometheusnet01.xyz",
      "server_port": 15185,
      "up_mbps": 70,
      "down_mbps": 150,
      "auth_str": "8e431636-d42f-470f-9f67-11895d18d19a",
      "disable_mtu_discovery": true,
      "tls": {
        "alpn": [
          "h3"
        ],
        "enabled": true,
        "disable_sni": true,
        "insecure": true,
        "server_name": ""
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone gc",
      "type": "vmess",
      "server": "gcore.com",
      "server_port": 80,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "xak47kkk64.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone gct",
      "type": "vmess",
      "server": "jp1-speedtest.tools.gcore.com",
      "server_port": 443,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "jp1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "xak47kkk64.com"
        }
      }
    },
    {
      "tag": "cf",
      "type": "vless",
      "server": "time.is",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cfv6",
      "type": "vless",
      "server": "2606:4700::",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cff",
      "type": "vless",
      "server": "shopify.com",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "cff-v6",
      "type": "vless",
      "server": "2606:4700::",
      "server_port": 2082,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "cft",
      "type": "vless",
      "server": "www.visa.com.sg",
      "server_port": 8443,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "server_name": "cf.yicanny.com",
        "utls": {
          "enabled": true,
          "fingerprint": "random"
        }
      },
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cft-v6",
      "type": "vless",
      "server": "2606:4700::",
      "server_port": 2053,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "server_name": "cf.yicanny.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        }
      },
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cf1",
      "type": "vless",
      "server": "shopify.com",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cff1",
      "type": "vless",
      "server": "time.cloudflare.com",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "cft1",
      "type": "vless",
      "server": "time.is",
      "server_port": 8443,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "server_name": "cf.yicanny.com",
        "utls": {
          "enabled": true,
          "fingerprint": "random"
        }
      },
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cf.yicanny.com"
        }
      }
    },
    {
      "tag": "cff2",
      "type": "vless",
      "server": "russia.com",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "cfffd1",
      "type": "vless",
      "server": "www.hugedomains.com",
      "server_port": 2052,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "ygkkk-vl-reality",
      "type": "vless",
      "server": "206.217.143.7",
      "server_port": 40628,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "packet_encoding": "xudp",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "www.yahoo.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "E0O_EpbDZUUutU84Mv5ZSCk88xhMJmKI6ItBA--P6CE",
          "short_id": "2950b90a"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws",
      "type": "vmess",
      "server": "time.cloudflare.com",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo-clone",
      "type": "vmess",
      "server": "malaysia.com",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone",
      "type": "vmess",
      "server": "japan.com",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone v6",
      "type": "vmess",
      "server": "2606:4700::",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo",
      "type": "vmess",
      "server": "time.is",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd2",
      "type": "vmess",
      "server": "154.194.2.119",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "🇰🇷 ygkkk-vm-argoa KR",
      "type": "vmess",
      "server": "www.iakeys.com",
      "server_port": 2096,
      "uuid": "c8068e04-e3d7-4e89-a551-311ad762b87f",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "handhelds-mechanical-newton-increased.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "c8068e04-e3d7-4e89-a551-311ad762b87f-vm",
        "headers": {
          "Host": "handhelds-mechanical-newton-increased.trycloudflare.com"
        }
      }
    },
    {
      "tag": "🇰🇷 ygkkk-vl-realitya KR",
      "type": "vless",
      "server": "3.39.194.232",
      "server_port": 52772,
      "uuid": "c8068e04-e3d7-4e89-a551-311ad762b87f",
      "packet_encoding": "xudp",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "www.yahoo.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "nJbWCXBGgMVfSiKrZHbchGEEO6rTAs2bB8QvseNHMFQ",
          "short_id": "3ee39433"
        }
      }
    },
    {
      "tag": "🇰🇷 awswss KR",
      "type": "vmess",
      "server": "aws.yicanny.com",
      "server_port": 2083,
      "uuid": "8970fdb1-572d-4489-be9f-b095d862dc81",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": ""
      },
      "transport": {
        "type": "ws",
        "path": "/p9I8mJ76/",
        "headers": {
          "Host": ""
        }
      }
    },
    {
      "tag": "rnws",
      "type": "vmess",
      "server": "rn.yicanny.com",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnwss",
      "type": "vmess",
      "server": "rn.yicanny.com",
      "server_port": 2087,
      "uuid": "ba1dc597-e3c3-4cec-9e96-db8801712484",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": ""
      },
      "transport": {
        "type": "ws",
        "path": "/cMamjPGO/",
        "headers": {
          "Host": ""
        }
      }
    },
    {
      "tag": "rnws1",
      "type": "vmess",
      "server": "18.165.132.49",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws2",
      "type": "vmess",
      "server": "65.9.51.82",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws3",
      "type": "vmess",
      "server": "54.230.219.120",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws4",
      "type": "vmess",
      "server": "54.230.232.252",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws5",
      "type": "vmess",
      "server": "54.230.218.55",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgc",
      "type": "vmess",
      "server": "gcore.com",
      "server_port": 80,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct",
      "type": "vmess",
      "server": "kx-speedtest.tools.gcore.com",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kx-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct1",
      "type": "vmess",
      "server": "45.80.213.61",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "sg1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgc1",
      "type": "vmess",
      "server": "gcore.com",
      "server_port": 80,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk8964.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct1-1",
      "type": "vmess",
      "server": "sg1-speedtest.tools.gcore.com",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "sg1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk8964.com"
        }
      }
    },
    {
      "tag": "rngct",
      "type": "vmess",
      "server": "gc.yicanny.com",
      "server_port": 443,
      "uuid": "adc3c9a3-d377-4136-8d4c-769e22612a76",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": ""
      },
      "transport": {
        "type": "ws",
        "path": "/1sWYRfDX/",
        "headers": {
          "Host": ""
        }
      }
    },
    {
      "tag": "rngc",
      "type": "vmess",
      "server": "gc.yicanny.com",
      "server_port": 80,
      "uuid": "adc3c9a3-d377-4136-8d4c-769e22612a76",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/1sWYRfDX/",
        "headers": {
          "Host": ""
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd22",
      "type": "vmess",
      "server": "103.184.44.101",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd23",
      "type": "vmess",
      "server": "103.184.44.42",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd24",
      "type": "vmess",
      "server": "103.184.45.53",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd25",
      "type": "vmess",
      "server": "103.184.44.38",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd26",
      "type": "vmess",
      "server": "103.184.44.188",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd27",
      "type": "vmess",
      "server": "103.184.44.50",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd28",
      "type": "vmess",
      "server": "103.184.45.147",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd29",
      "type": "vmess",
      "server": "103.184.45.191",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd210",
      "type": "vmess",
      "server": "103.184.45.27",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd211",
      "type": "vmess",
      "server": "103.184.45.243",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd212",
      "type": "vmess",
      "server": "154.194.2.101",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd213",
      "type": "vmess",
      "server": "154.92.9.93",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-ws-clone fd214",
      "type": "vmess",
      "server": "154.194.2.127",
      "server_port": 2095,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "rn.yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo2",
      "type": "vmess",
      "server": "154.194.2.238",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo3",
      "type": "vmess",
      "server": "154.194.2.246",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo4",
      "type": "vmess",
      "server": "103.160.204.173",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo5",
      "type": "vmess",
      "server": "103.184.45.138",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argo6",
      "type": "vmess",
      "server": "103.184.45.103",
      "server_port": 2087,
      "uuid": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "kenny-practitioner-arc-receptors.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "b3c76f0e-f2c6-4518-9ddc-b21b3339d550-vm",
        "headers": {
          "Host": "kenny-practitioner-arc-receptors.trycloudflare.com"
        }
      }
    },
    {
      "tag": "🇺🇸 ccws us",
      "type": "vmess",
      "server": "shopify.com",
      "server_port": 2095,
      "uuid": "d46dd6f4-d24a-4724-b5da-95378f792dd0",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/zFJSVM4H/",
        "headers": {
          "Host": "yicanny.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc",
      "type": "vmess",
      "server": "www.wto.org",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc",
      "type": "vmess",
      "server": "54.230.28.44",
      "server_port": 80,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd",
      "type": "vmess",
      "server": "54.230.219.120",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-gc",
      "type": "vmess",
      "server": "gcore.com",
      "server_port": 80,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "ak4764kkk64.com"
        }
      }
    },
    {
      "tag": "ccws-gc",
      "type": "vmess",
      "server": "gcore.com",
      "server_port": 80,
      "uuid": "d46dd6f4-d24a-4724-b5da-95378f792dd0",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/zFJSVM4H/",
        "headers": {
          "Host": "ak4764.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-gct",
      "type": "vmess",
      "server": "hk2-speedtest.tools.gcore.com",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "hk2-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "ak4764kkk64.com"
        }
      }
    },
    {
      "tag": "ccws-gct",
      "type": "vmess",
      "server": "lgs-speedtest.tools.gcore.com",
      "server_port": 443,
      "uuid": "d46dd6f4-d24a-4724-b5da-95378f792dd0",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "lgs-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/zFJSVM4H/",
        "headers": {
          "Host": "ak4764.com"
        }
      }
    },
    {
      "tag": "🇺🇸 ccwss us",
      "type": "vmess",
      "server": "yicanny.com",
      "server_port": 2087,
      "uuid": "e39e2bd5-9e09-497f-835b-c4b04b15da89",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": ""
      },
      "transport": {
        "type": "ws",
        "path": "/znZWujHX/",
        "headers": {
          "Host": ""
        }
      }
    },
    {
      "tag": "🇺🇸 ygkkk-vl-reality us",
      "type": "vless",
      "server": "74.48.95.50",
      "server_port": 17974,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "packet_encoding": "xudp",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "www.yahoo.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "17FnGUGQ9rrtCtJvtYWywWCYtAc0dyxVbwNbNEp05yE",
          "short_id": "6a565d14"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc2",
      "type": "vmess",
      "server": "103.160.204.66",
      "server_port": 2083,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc3",
      "type": "vmess",
      "server": "103.160.204.18",
      "server_port": 2087,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc4",
      "type": "vmess",
      "server": "103.160.204.26",
      "server_port": 2053,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc5",
      "type": "vmess",
      "server": "103.160.204.10",
      "server_port": 2096,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc6",
      "type": "vmess",
      "server": "103.160.204.25",
      "server_port": 8443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc7",
      "type": "vmess",
      "server": "103.160.204.7",
      "server_port": 2053,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc8",
      "type": "vmess",
      "server": "103.160.204.38",
      "server_port": 2083,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-argocc9",
      "type": "vmess",
      "server": "194.156.99.132",
      "server_port": 2087,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "simultaneously-bolivia-planner-businesses.trycloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "simultaneously-bolivia-planner-businesses.trycloudflare.com"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd2",
      "type": "vmess",
      "server": "54.239.152.67",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd3",
      "type": "vmess",
      "server": "205.251.253.42",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd4",
      "type": "vmess",
      "server": "54.230.223.140",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd5",
      "type": "vmess",
      "server": "18.66.226.19",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd6",
      "type": "vmess",
      "server": "13.35.90.14",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd7",
      "type": "vmess",
      "server": "52.85.10.59",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd8",
      "type": "vmess",
      "server": "65.8.250.52",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd9",
      "type": "vmess",
      "server": "54.230.200.5",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc-cfd10",
      "type": "vmess",
      "server": "54.230.219.200",
      "server_port": 443,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "d2klzc4goyo691.cloudfront.net"
      },
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct12",
      "type": "vmess",
      "server": "92.38.168.5",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "sg1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct13",
      "type": "vmess",
      "server": "80.93.221.4",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "sg1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "🇸🇬 rnwsgct14",
      "type": "vmess",
      "server": "5.101.219.14",
      "server_port": 443,
      "uuid": "d12ee678-1c03-4a4b-b40f-c42798ff8528",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "sg1-speedtest.tools.gcore.com",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "/8RhFIuaU/",
        "headers": {
          "Host": "ak47kkk64.com"
        }
      }
    },
    {
      "tag": "cff-clone",
      "type": "vless",
      "server": "www.sean-now.com",
      "server_port": 8880,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "rnws12",
      "type": "vmess",
      "server": "18.160.249.172",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws13",
      "type": "vmess",
      "server": "13.33.250.202",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws14",
      "type": "vmess",
      "server": "13.249.27.239",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws15",
      "type": "vmess",
      "server": "54.230.28.44",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "rnws16",
      "type": "vmess",
      "server": "54.230.74.94",
      "server_port": 80,
      "uuid": "a191bf29-9599-45f9-b1ad-90e0e6d4fb18",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/0Ka3G1yU/",
        "headers": {
          "Host": "d1gog6cwgiaint.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc2",
      "type": "vmess",
      "server": "13.227.67.75",
      "server_port": 80,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc3",
      "type": "vmess",
      "server": "52.222.155.54",
      "server_port": 80,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "ygkkk-vm-wscc4",
      "type": "vmess",
      "server": "99.86.135.213",
      "server_port": 80,
      "uuid": "64db2a61-4296-4747-8f50-017201a4c5e4",
      "security": "auto",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "64db2a61-4296-4747-8f50-017201a4c5e4-vm",
        "headers": {
          "Host": "d2klzc4goyo691.cloudfront.net"
        }
      }
    },
    {
      "tag": "cfffd12",
      "type": "vless",
      "server": "154.194.2.148",
      "server_port": 2052,
      "uuid": "ed0dc7de-364f-4228-abf6-b027890bcd93",
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "cff.cf64.workers.dev"
        }
      }
    },
    {
      "tag": "01ccs",
      "type": "vmess",
      "server": "4.1808.cf",
      "server_port": 30001,
      "uuid": "e4f8630b-78ef-44e8-8eb3-deb585bbc328",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "ccs.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "e4f8630b",
        "headers": {
          "Host": "ccs.1808.cf"
        }
      }
    },
    {
      "tag": "02ccs",
      "type": "vmess",
      "server": "5.1808.cf",
      "server_port": 30001,
      "uuid": "e4f8630b-78ef-44e8-8eb3-deb585bbc328",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "ccs.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "e4f8630b",
        "headers": {
          "Host": "ccs.1808.cf"
        }
      }
    },
    {
      "tag": "03ccs",
      "type": "vmess",
      "server": "6.1808.cf",
      "server_port": 30012,
      "uuid": "e4f8630b-78ef-44e8-8eb3-deb585bbc328",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "ccs.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "e4f8630b",
        "headers": {
          "Host": "ccs.1808.cf"
        }
      }
    },
    {
      "tag": "1ccs-ws",
      "type": "vmess",
      "server": "skk.moe",
      "server_port": 80,
      "uuid": "e4f8630b-78ef-44e8-8eb3-deb585bbc328",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "e4f8630b",
        "headers": {
          "Host": "ccs.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-01",
      "type": "vmess",
      "server": "4.1808.cf",
      "server_port": 30001,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-02",
      "type": "vmess",
      "server": "5.1808.cf",
      "server_port": 30001,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-03",
      "type": "vmess",
      "server": "6.1808.cf",
      "server_port": 30012,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-ASN31898",
      "type": "vmess",
      "server": "oracle.1808.cf",
      "server_port": 15800,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "🇰🇷 CC1-KR-30010",
      "type": "vmess",
      "server": "222.118.221.34",
      "server_port": 30010,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-ws-01",
      "type": "vmess",
      "server": "www.who.int",
      "server_port": 80,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC1-ws-02",
      "type": "vmess",
      "server": "skk.moe",
      "server_port": 80,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "CC2-WS",
      "type": "vmess",
      "server": "skk.moe",
      "server_port": 80,
      "uuid": "b5f33fbb-dc1f-4686-b4a2-8fd1849e7fc2",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "b5f33fbb",
        "headers": {
          "Host": "cc2.1808.cf"
        }
      }
    },
    {
      "tag": "CC3-ChatGPT",
      "type": "vmess",
      "server": "skk.moe",
      "server_port": 443,
      "uuid": "8c67bfcb-7382-4f6b-a1a5-71002467a572",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc3.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "8c67bfcb",
        "headers": {
          "Host": "cc3.1808.cf"
        }
      }
    },
    {
      "tag": "CC3-ChatGPT- 30010",
      "type": "vmess",
      "server": "222.118.221.34",
      "server_port": 30010,
      "uuid": "8c67bfcb-7382-4f6b-a1a5-71002467a572",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc3.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "8c67bfcb",
        "headers": {
          "Host": "cc3.1808.cf"
        }
      }
    },
    {
      "tag": "CC3-WS ChatGPT",
      "type": "vmess",
      "server": "skk.moe",
      "server_port": 80,
      "uuid": "8c67bfcb-7382-4f6b-a1a5-71002467a572",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "transport": {
        "type": "ws",
        "path": "8c67bfcb",
        "headers": {
          "Host": "cc3.1808.cf"
        }
      }
    },
    {
      "tag": "ChatGPT-chigua 01",
      "type": "vmess",
      "server": "5.1808.cf",
      "server_port": 30001,
      "uuid": "ffffffff-ffff-ffff-ffff-ffffffffffff",
      "security": "none",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "wocao.chigua.tk",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "",
        "headers": {
          "Host": "wocao.chigua.tk"
        }
      }
    },
    {
      "tag": "ChatGPT-chigua 02",
      "type": "vmess",
      "server": "6.1808.cf",
      "server_port": 30012,
      "uuid": "ffffffff-ffff-ffff-ffff-ffffffffffff",
      "security": "none",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "wocao.chigua.tk",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "",
        "headers": {
          "Host": "wocao.chigua.tk"
        }
      }
    },
    {
      "tag": "ChatGPT-chigua-30010",
      "type": "vmess",
      "server": "222.118.221.34",
      "server_port": 30010,
      "uuid": "ffffffff-ffff-ffff-ffff-ffffffffffff",
      "security": "none",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "wocao.chigua.tk",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "",
        "headers": {
          "Host": "wocao.chigua.tk"
        }
      }
    },
    {
      "tag": "🇺🇸 US-CC1-xTom",
      "type": "vmess",
      "server": "176.119.150.153",
      "server_port": 58682,
      "uuid": "aa3b9b98-5910-4920-a936-f71db4ff5e4d",
      "security": "aes-128-gcm",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "cc1.1808.cf",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "aa3b9b98",
        "headers": {
          "Host": "cc1.1808.cf"
        }
      }
    },
    {
      "tag": "xTom_ChatGPT-chigua",
      "type": "vmess",
      "server": "176.119.150.153",
      "server_port": 58682,
      "uuid": "ffffffff-ffff-ffff-ffff-ffffffffffff",
      "security": "none",
      "alter_Id": 0,
      "packet_encoding": "xudp",
      "tls": {
        "enabled": true,
        "insecure": true,
        "server_name": "wocao.chigua.tk",
        "utls": {
          "enabled": true,
          "fingerprint": ""
        }
      },
      "transport": {
        "type": "ws",
        "path": "",
        "headers": {
          "Host": "wocao.chigua.tk"
        }
      }
    }
  ],
  "route": {
    "auto_detect_interface": true,
    "final": "proxy",
    "rules": [
      {
        "protocol": "dns",
        "outbound": "dns-out"
      },
      {
        "network": "udp",
        "port": 443,
        "outbound": "block"
      },
      {
        "rule_set": "geosite-category-ads-all",
        "outbound": "🛑 AdBlock"
      },
      {
        "clash_mode": "direct",
        "outbound": "direct"
      },
      {
        "clash_mode": "global",
        "outbound": "proxy"
      },
      {
        "domain": [
          "clash.razord.top",
          "yacd.metacubex.one",
          "yacd.haishan.me",
          "d.metacubex.one"
        ],
        "outbound": "direct"
      },
      {
        "rule_set": "geosite-openai",
        "outbound": "🤖 OpenAI"
      },
      {
        "rule_set": "geosite-youtube",
        "outbound": "🌌 Google"
      },
      {
        "rule_set": "geoip-google",
        "outbound": "🌌 Google"
      },
      {
        "rule_set": [
          "geosite-google",
          "geosite-github"
        ],
        "outbound": "🌌 Google"
      },
      {
        "rule_set": "geoip-telegram",
        "outbound": "📟 Telegram"
      },
      {
        "rule_set": "geosite-telegram",
        "outbound": "📟 Telegram"
      },
      {
        "rule_set": "geoip-twitter",
        "outbound": "🐦 Twitter"
      },
      {
        "rule_set": "geosite-twitter",
        "outbound": "🐦 Twitter"
      },
      {
        "rule_set": "geoip-facebook",
        "outbound": "👤 Facebook"
      },
      {
        "rule_set": [
          "geosite-facebook",
          "geosite-instagram"
        ],
        "outbound": "👤 Facebook"
      },
      {
        "rule_set": "geosite-amazon",
        "outbound": "🛍️ Amazon"
      },
      {
        "rule_set": "geosite-apple",
        "outbound": "🍎 Apple"
      },
      {
        "rule_set": "geosite-microsoft",
        "outbound": "🧩 Microsoft"
      },
      {
        "rule_set": "geosite-category-games",
        "outbound": "🎮 Game"
      },
      {
        "rule_set": "geosite-bilibili",
        "outbound": "📺 Bilibili"
      },
      {
        "rule_set": "geoip-netflix",
        "outbound": "🎬 MediaVideo"
      },
      {
        "rule_set": [
          "geosite-tiktok",
          "geosite-netflix",
          "geosite-hbo",
          "geosite-disney",
          "geosite-primevideo"
        ],
        "outbound": "🎬 MediaVideo"
      },
      {
        "rule_set": "geosite-gfw",
        "outbound": "🎮 Game"
      },
      {
        "rule_set": "geosite-geolocation-!cn",
        "outbound": "🌏 !cn"
      },
      {
        "ip_is_private": true,
        "outbound": "🌏 cn"
      },
      {
        "rule_set": "geoip-cn",
        "outbound": "🌏 cn"
      },
      {
        "rule_set": "geosite-cn",
        "outbound": "🌏 cn"
      }
    ],
    "rule_set": [
      {
        "tag": "geoip-google",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/google.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-gfw",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geosite/gfw.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geoip-telegram",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/telegram.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geoip-twitter",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/twitter.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geoip-facebook",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/facebook.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geoip-netflix",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/netflix.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geoip-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geoip/rule-set/geoip-cn.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-openai",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-openai.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-youtube",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-youtube.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-google",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-google.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-github",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-github.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-telegram",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-telegram.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-twitter",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-twitter.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-facebook",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-facebook.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-instagram",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-instagram.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-amazon",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-amazon.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-apple",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-apple.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-microsoft",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-microsoft.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-category-games",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-category-games.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-bilibili",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-bilibili.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-tiktok",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-tiktok.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-netflix",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-netflix.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-hbo",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-hbo.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-disney",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-disney.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-primevideo",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-primevideo.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-cn.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-geolocation-!cn",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-geolocation-!cn.srs",
        "download_detour": "auto"
      },
      {
        "tag": "geosite-category-ads-all",
        "type": "remote",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-category-ads-all.srs",
        "download_detour": "auto"
      }
    ]
  },
  "experimental": {
    "cache_file": {
      "enabled": true,
      "store_fakeip": true
    },
    "clash_api": {
      "external_controller": "127.0.0.1:9090",
      "external_ui_download_url": "https://github.com/MetaCubeX/metacubexd/archive/refs/heads/gh-pages.zip",
      "external_ui_download_detour": "",
      "external_ui": "ui",
      "secret": "",
      "default_mode": "rule"
    }
  }
}
