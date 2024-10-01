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

docker ps



```

sudo apt install ufw
sudo ufw enable
sudo ufw status
sudo ufw status verbose

sudo ufw allow 22/tcp
sudo ufw allow 8000/tcp
sudo ufw allow 51820/udp
sudo ufw allow 51821/tcp
sudo ufw allow 80/tcp
sudo ufw allow 81/tcp
sudo ufw allow 53/tcp
sudo ufw allow 53/udp
sudo ufw allow 67/udp


## services

### Yacht

https://yacht.sh/docs/Installation/Install

acces: http://192.168.0.104:8000

default login:
Username:admin@yacht.local
PW:pass

### Wg-easy

https://github.com/WeeJeWel/wg-easy

acces: http://192.168.0.104:51821

default login:
PW:

### vaultwarden

https://github.com/dani-garcia/vaultwarden?tab=readme-ov-file

acces: http://192.168.0.104:82

default login:
Username:
PW:

### pihole

https://hub.docker.com/r/pihole/pihole

acces: http://192.168.0.104:81

default login:
Username:
PW:

### cloudflare tunel

