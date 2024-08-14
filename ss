{
    "remarks": "💦 BPB Frag - Best Fragment 😎",
    "log": {
      "loglevel": "warning"
    },
    "dns": {
      "servers": [
        "https://94.140.14.14/dns-query",
        "8.8.8.8"
      ],
      "tag": "dns"
    },
    "inbounds": [
      {
        "port": 10808,
        "protocol": "socks",
        "settings": {
          "auth": "noauth",
          "udp": true,
          "userLevel": 8
        },
        "sniffing": {
          "destOverride": [
            "http",
            "tls"
          ],
          "enabled": true,
          "routeOnly": true
        },
        "tag": "socks-in"
      },
      {
        "port": 10809,
        "protocol": "http",
        "settings": {
          "auth": "noauth",
          "udp": true,
          "userLevel": 8
        },
        "sniffing": {
          "destOverride": [
            "http",
            "tls"
          ],
          "enabled": true,
          "routeOnly": true
        },
        "tag": "http-in"
      },
      {
        "listen": "127.0.0.1",
        "port": 10853,
        "protocol": "dokodemo-door",
        "settings": {
          "address": "1.1.1.1",
          "network": "tcp,udp",
          "port": 53
        },
        "tag": "dns-in"
      }
    ],
    "outbounds": [
      {
        "protocol": "vless",
        "settings": {
          "vnext": [
            {
              "address": "tangybpball.pages.dev",
              "port": 443,
              "users": [
                {
                  "encryption": "none",
                  "flow": "",
                  "id": "771f7acf-8bff-488d-856c-b37ae6808dec",
                  "level": 8,
                  "security": "auto"
                }
              ]
            }
          ]
        },
        "streamSettings": {
          "network": "ws",
          "security": "tls",
          "sockopt": {
            "tcpKeepAliveIdle": 100,
            "tcpNoDelay": true
          },
          "tlsSettings": {
            "allowInsecure": false,
            "fingerprint": "chrome",
            "alpn": [
              "h2",
              "http/1.1"
            ],
            "serverName": "TaNgYbPBAlL.pages.Dev"
          },
          "wsSettings": {
            "headers": {
              "Host": "TangYbpBAll.PagEs.deV"
            },
            "path": "/cHZ2qa5sjjD77AdK?ed=2560"
          }
        },
        "tag": "proxy"
      },
      {
        "protocol": "dns",
        "tag": "dns-out"
      },
      {
        "protocol": "freedom",
        "settings": {},
        "tag": "direct"
      },
      {
        "protocol": "blackhole",
        "settings": {
          "response": {
            "type": "http"
          }
        },
        "tag": "block"
      },
      {
        "tag": "frag_1",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "10-20",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_2",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "20-30",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_3",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "30-40",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_4",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "40-50",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_5",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "50-60",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_6",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "60-70",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_7",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "70-80",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_8",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "80-90",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_9",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "90-100",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_10",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "10-30",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_11",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "20-40",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_12",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "30-50",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_13",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "40-60",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_14",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "50-70",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_15",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "60-80",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_16",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "70-90",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_17",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "80-100",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      },
      {
        "tag": "frag_18",
        "protocol": "freedom",
        "settings": {
          "fragment": {
            "packets": "tlshello",
            "length": "100-200",
            "interval": "1-1"
          }
        },
        "proxySettings": {
          "tag": "proxy"
        }
      }
    ],
    "policy": {
      "levels": {
        "8": {
          "connIdle": 300,
          "downlinkOnly": 1,
          "handshake": 4,
          "uplinkOnly": 1
        }
      },
      "system": {
        "statsOutboundUplink": true,
        "statsOutboundDownlink": true
      }
    },
    "routing": {
      "domainStrategy": "IPIfNonMatch",
      "rules": [
        {
          "inboundTag": [
            "dns-in"
          ],
          "outboundTag": "dns-out",
          "type": "field"
        },
        {
          "balancerTag": "all",
          "type": "field",
          "network": "tcp,udp"
        }
      ],
      "balancers": [
        {
          "tag": "all",
          "selector": [
            "frag"
          ],
          "strategy": {
            "type": "leastPing"
          }
        }
      ]
    },
    "observatory": {
      "probeInterval": "30s",
      "probeURL": "https://api.github.com/_private/browser/stats",
      "subjectSelector": [
        "frag"
      ],
      "EnableConcurrency": true
    },
    "stats": {}
  }
