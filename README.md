# 🐳&ensp;OpenVPN for Docker

How to set up on Digital Ocean:

1. Create the cheapest [Docker droplet.](https://marketplace.digitalocean.com/apps/docker)

2. On the droplet page, go to _Access_ and click on _Droplet Console_.

3. Copy this command and run it. It may take several of minutes to complete.

```shell
docker exec $(docker run -q --pull always -d --privileged -p 1194:1194/udp -p 443:443/tcp ghcr.io/smikhalevski/openvpn-docker:master) print_config
```

4. The command output is an OpenVPN client configuration. Copy it and save as `clinet.ovpn`.

5. Download and install [OpenVPN Connect.](https://openvpn.net/client-connect-vpn-for-mac-os)

6. Open OpenVPN Connect and import `clinet.ovpn`.
