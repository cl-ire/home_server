# home_server


## Structure

project-root/
│
├── .env                       # Single global environment file for all services
├── docker-compose.yml         # Main Docker Compose file
│
├── cloudflared/               # Cloudflare 
│   └── config.yml             # 
│
├── nas_backup/                # Cloudflare 
│   └── backup.sh              # 
│   └── Dockerfile.backup      # 
│
├── vaultwarden/               # Vaultwarden service files
│   └── vw-data/               # Persistent data for Vaultwarden
│
├── wg-easy/                   # WireGuard Easy service files
│   └── data/                  # Data storage for WireGuard config files
│
├── yacht/                     # Yacht service files
│   └── config/                # Config for Yacht (docker volume)
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


### vaultwarden

https://github.com/dani-garcia/vaultwarden?tab=readme-ov-file

acces: http://192.168.0.104:82

#### enable admin page:
https://github.com/dani-garcia/vaultwarden/wiki/Enabling-admin-page

#### enable Mobile Client push notification
https://github.com/dani-garcia/vaultwarden/wiki/Enabling-Mobile-Client-push-notification
allow 2FA via push notification on smartphone

go to https://bitwarden.com/host/ to get your VAULTWARDEN_PUSH_INSTALLATION_ID and your VAULTWARDEN_PUSH_INSTALLATION_KEY for your env file

### pihole

https://hub.docker.com/r/pihole/pihole

acces: http://192.168.0.104:81


### cloudflare tunel
