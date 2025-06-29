[{
  "dns": {
    "hosts": {
      "dns.nextdns.io": [
        "steering.nextdns.io.",
        "45.90.28.0",
        "45.90.30.0",
        "steering.nextdns.io.",
        "2a07:a8c0::",
        "2a07:a8c1::"
      ],
      "geosite:category-ads-all": [
        "127.0.0.1"
      ],
      "geosite:category-ads-ir": [
        "127.0.0.1"
      ]
    },
    "queryStrategy": "UseIP",
    "servers": [
      {
        "address": "https://dns.nextdns.io/9356c5",
        "tag": "remote-dns"
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "geosite:category-ir"
        ],
        "expectIPs": [
          "geoip:ir"
        ],
        "skipFallback": true
      },
      {
        "address": "78.157.42.100",
        "domains": [
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "skipFallback": true
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "full:www.speedtest.net"
        ],
        "skipFallback": true
      }
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
        "enabled": true
      },
      "tag": "socks-in"
    },
    {
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
  "log": {
    "loglevel": "warning"
  },
  "outbounds": [
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "www.speedtest.net",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "cc52d1fc-81c4-4d71-9dfc-29e9188a0809",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "tN0.PAgEs.dev",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/T36kdttnSosjBoXy?ed=2560"
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
      "settings": {
        "domainStrategy": "UseIP"
      },
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
  "remarks": "💦 1 - VLESS - Domain : 443",
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
        "inboundTag": [
          "socks-in"
        ],
        "outboundTag": "dns-out",
        "port": "53",
        "type": "field"
      },
      {
        "inboundTag": [
          "remote-dns"
        ],
        "outboundTag": "proxy",
        "type": "field"
      },
      {
        "inboundTag": [
          "dns"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ads-all",
          "geosite:category-ads-ir"
        ],
        "outboundTag": "block",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ir",
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "ip": [
          "geoip:ir"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "network": "udp",
        "outboundTag": "block",
        "type": "field"
      },
      {
        "network": "tcp",
        "outboundTag": "proxy",
        "type": "field"
      }
    ]
  },
  "stats": {}
},{
  "dns": {
    "hosts": {
      "unfiltered.joindns4.eu": [
        "unfiltered.joindns4.eu.",
        "86.54.11.100",
        "86.54.11.200",
        "unfiltered.joindns4.eu.",
        "2a13:1001::86:54:11:100",
        "2a13:1001::86:54:11:200"
      ],
      "geosite:category-ads-all": [
        "127.0.0.1"
      ],
      "geosite:category-ads-ir": [
        "127.0.0.1"
      ]
    },
    "queryStrategy": "UseIP",
    "servers": [
      {
        "address": "tls://unfiltered.joindns4.eu",
        "tag": "remote-dns"
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "geosite:category-ir"
        ],
        "expectIPs": [
          "geoip:ir"
        ],
        "skipFallback": true
      },
      {
        "address": "78.157.42.100",
        "domains": [
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "skipFallback": true
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "full:www.speedtest.net"
        ],
        "skipFallback": true
      }
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
        "enabled": true
      },
      "tag": "socks-in"
    },
    {
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
  "log": {
    "loglevel": "warning"
  },
  "outbounds": [
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "www.speedtest.net",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TaNGyRN021.paGEs.DeV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/Vy2ZfBxAOtzcDDyL?ed=2560"
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
      "settings": {
        "domainStrategy": "UseIP"
      },
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
  "remarks": "💦 2 - VLESS - Domain : 443",
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
        "inboundTag": [
          "socks-in"
        ],
        "outboundTag": "dns-out",
        "port": "53",
        "type": "field"
      },
      {
        "inboundTag": [
          "remote-dns"
        ],
        "outboundTag": "proxy",
        "type": "field"
      },
      {
        "inboundTag": [
          "dns"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ads-all",
          "geosite:category-ads-ir"
        ],
        "outboundTag": "block",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ir",
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "ip": [
          "geoip:ir"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "network": "udp",
        "outboundTag": "block",
        "type": "field"
      },
      {
        "network": "tcp",
        "outboundTag": "proxy",
        "type": "field"
      }
    ]
  },
  "stats": {}
},{
  "dns": {
    "hosts": {
      "dns.nextdns.io": [
        "steering.nextdns.io.",
        "45.90.28.0",
        "45.90.30.0",
        "steering.nextdns.io.",
        "2a07:a8c0::",
        "2a07:a8c1::"
      ],
      "geosite:category-ads-all": [
        "127.0.0.1"
      ],
      "geosite:category-ads-ir": [
        "127.0.0.1"
      ]
    },
    "queryStrategy": "UseIP",
    "servers": [
      {
        "address": "https://dns.nextdns.io/78aa6d",
        "tag": "remote-dns"
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "geosite:category-ir"
        ],
        "expectIPs": [
          "geoip:ir"
        ],
        "skipFallback": true
      },
      {
        "address": "78.157.42.100",
        "domains": [
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "skipFallback": true
      },
      {
        "address": "8.8.8.8",
        "domains": [
          "full:tangyrn021.pages.dev",
          "full:www.speedtest.net"
        ],
        "skipFallback": true
      }
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
        "enabled": true
      },
      "tag": "socks-in"
    },
    {
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
  "log": {
    "loglevel": "warning"
  },
  "observatory": {
    "subjectSelector": [
      "prox"
    ],
    "probeUrl": "https://www.gstatic.com/generate_204",
    "probeInterval": "30s",
    "enableConcurrency": true
  },
  "outbounds": [
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "tangyrn021.pages.dev",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TAnGYrn021.PAGes.dev",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/ltJkm2vKD9q75QBa?ed=2560"
        }
      },
      "tag": "prox-1"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "www.speedtest.net",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TaNGyRN021.paGEs.DeV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/Vy2ZfBxAOtzcDDyL?ed=2560"
        }
      },
      "tag": "prox-2"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.64.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "tANgYRn021.PAges.dEv",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/W3JiadS6g6zmfyAK?ed=2560"
        }
      },
      "tag": "prox-3"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.48.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "taNgyrN021.paGES.dEv",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/D0kvctsmmIsttWVI?ed=2560"
        }
      },
      "tag": "prox-4"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.16.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TAnGYrn021.PAGES.DEv",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/dBI4MfSK6YNyzIVI?ed=2560"
        }
      },
      "tag": "prox-5"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.96.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "tANgyrN021.PageS.dEV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/wl9y3eSdVle87VZF?ed=2560"
        }
      },
      "tag": "prox-6"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.112.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "tanGYrN021.pages.deV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/q7mFAuroh0omY4nE?ed=2560"
        }
      },
      "tag": "prox-7"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.80.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TAnGYRn021.PAGes.DEV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/zEwH2yO8eULdObiv?ed=2560"
        }
      },
      "tag": "prox-8"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "104.21.32.1",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TaNgYRn021.paGES.DEv",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/Rm5OykLaamAcKz6N?ed=2560"
        }
      },
      "tag": "prox-9"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:2001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "taNGYrn021.PAGes.dEV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/DSbiN9RailN9cENA?ed=2560"
        }
      },
      "tag": "prox-10"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:3001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TANGYrN021.PAges.dEV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/GPmQT6rmm3U9bIs5?ed=2560"
        }
      },
      "tag": "prox-11"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:4001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TAngyRN021.pAGES.dev",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/xI8guz9DGK71iUHu?ed=2560"
        }
      },
      "tag": "prox-12"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:5001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TANGyrN021.PaGES.dEV",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/ErT3NOZ5hot7mXsx?ed=2560"
        }
      },
      "tag": "prox-13"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:1001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TAngYRN021.PaGes.dev",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/CV9hrqD6P4bQHg7b?ed=2560"
        }
      },
      "tag": "prox-14"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:7001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TANGyrn021.paGES.dev",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/BHv7acl0Vxc4JYI0?ed=2560"
        }
      },
      "tag": "prox-15"
    },
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "[2606:4700:3030::6815:6001]",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "flow": "",
                "id": "9f43e74e-8bd7-4aa6-9c8c-36007ee7818d",
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
        "sockopt": {},
        "tlsSettings": {
          "allowInsecure": false,
          "alpn": [
            "http/1.1"
          ],
          "fingerprint": "randomized",
          "serverName": "TanGyRN021.PageS.dEv",
          "show": false
        },
        "wsSettings": {
          "headers": {
            "Host": ""
          },
          "path": "/8nWfRZMiaHrwxS8F?ed=2560"
        }
      },
      "tag": "prox-16"
    },
    {
      "protocol": "dns",
      "tag": "dns-out"
    },
    {
      "protocol": "freedom",
      "settings": {
        "domainStrategy": "UseIP"
      },
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
  "remarks": "💦 BPB - Best Ping 💥",
  "routing": {
    "balancers": [
      {
        "tag": "all",
        "selector": [
          "prox"
        ],
        "strategy": {
          "type": "leastPing"
        },
        "fallbackTag": "prox-2"
      }
    ],
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
        "inboundTag": [
          "socks-in"
        ],
        "outboundTag": "dns-out",
        "port": "53",
        "type": "field"
      },
      {
        "balancerTag": "all",
        "inboundTag": [
          "remote-dns"
        ],
        "outboundTag": "",
        "type": "field"
      },
      {
        "inboundTag": [
          "dns"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ads-all",
          "geosite:category-ads-ir"
        ],
        "outboundTag": "block",
        "type": "field"
      },
      {
        "domain": [
          "geosite:category-ir",
          "geosite:openai",
          "geosite:microsoft",
          "geosite:oracle",
          "geosite:docker",
          "geosite:adobe",
          "geosite:epicgames",
          "geosite:intel",
          "geosite:amd",
          "geosite:nvidia",
          "geosite:asus",
          "geosite:hp",
          "geosite:lenovo",
          "domain:google.com"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "ip": [
          "geoip:ir"
        ],
        "outboundTag": "direct",
        "type": "field"
      },
      {
        "network": "udp",
        "outboundTag": "block",
        "type": "field"
      },
      {
        "balancerTag": "all",
        "network": "tcp",
        "outboundTag": "",
        "type": "field"
      }
    ]
  },
  "stats": {}
}{
  "dns": {
    "queryStrategy": "UseIP",
    "servers": [
      {
        "address": "8.8.8.8",
        "skipFallback": false
      }
    ],
    "tag": "dns_out"
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
          "tls",
          "quic",
          "fakedns"
        ],
        "enabled": true
      },
      "tag": "socks"
    },
    {
      "port": 10809,
      "protocol": "http",
      "settings": {
        "userLevel": 8
      },
      "tag": "http"
    }
  ],
  "log": {
    "loglevel": "warning"
  },
  "outbounds": [
    {
      "protocol": "vless",
      "tag": "proxy",
      "streamSettings": {
        "network": "ws",
        "security": "tls",
        "sockopt": {
          "dialerProxy": "fragment",
          "tcpKeepAliveIdle": 100,
          "tcpMptcp": true,
          "penetrate": true
        },
        "tlsSettings": {
          "allowInsecure": true,
          "alpn": [
            "h3",
            "h2",
            "http/1.1"
          ],
          "fingerprint": "chrome",
          "serverName": "fcvbb.digikala.lat"
        },
        "wsSettings": {
          "headers": {},
          "heartbeatPeriod": 0,
          "host": "private.digikala.lat",
          "path": "/"
        }
      },
      "mux": {
        "enabled": true,
        "concurrency": 8,
        "xudpConcurrency": 16,
        "xudpProxyUDP443": "reject"
      },
      "settings": {
        "vnext": [
          {
            "address": "10.202.8.146",
            "port": 443,
            "users": [
              {
                "encryption": "none",
                "id": "c1f6fe11-7446-4663-9630-09aa1a3af46a",
                "level": 8
              }
            ]
          }
        ]
      }
    },
    {
      "protocol": "freedom",
      "settings": {
        "domainStrategy": "AsIs",
        "noises": [],
        "redirect": ""
      },
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
      "tag": "fragment",
      "protocol": "freedom",
      "settings": {
        "domainStrategy": "AsIs",
        "fragment": {
          "packets": "1-2",
          "length": "1-5",
          "interval": "3-5"
        }
      },
      "streamSettings": {
        "sockopt": {
          "tcpKeepAliveIdle": 100,
          "tcpMptcp": true,
          "penetrate": true
        }
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
      "statsOutboundDownlink": true,
      "statsOutboundUplink": true
    }
  },
  "remarks": "Nahan-gpsv03ug",
  "routing": {
    "domainStrategy": "AsIs",
    "rules": [
      {
        "network": "tcp,udp",
        "outboundTag": "proxy",
        "type": "field"
      }
    ]
  },
  "stats": {}
}]
