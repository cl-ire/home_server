# home_server


## Structure

project-root/
│
├── .env                      # Single global environment file for all services
├── docker-compose.yml         # Main Docker Compose file
│
├── yacht/                     # Yacht service files
│   └── config/                # Config for Yacht (docker volume)
│
├── wg-easy/                   # WireGuard Easy service files
│   └── data/                  # Data storage for WireGuard config files
│
├── vaultwarden/               # Vaultwarden service files
│   └── vw-data/               # Persistent data for Vaultwarden
│
└── pihole/                    # Pi-hole service files
    └── etc-pihole/            # Persistent data for Pi-hole
    └── etc-dnsmasq.d/         # Configuration data for Pi-hole


## setup

```bash

cd ~/home_server/

cp .env_template .env

sudo usermod -aG docker server  #Add the User to the Docker Group
logout                          #Log Out and Log Back In
groups                          #Verify the Permissions

docker compose up -d


```

## services

### Yacht

acces: https://192.168.0.104:8000


### Wg-easy

acces: https://192.168.0.104:51821


### vaultwarden

acces: https://192.168.0.104:80

### pihole

acces: https://192.168.0.104:81

### cloudflare tunel
