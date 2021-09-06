# Foundry VTT / Traefik Docker
## Prereqs
 * Traefik set up on a Docker network called `web`.
 * Let's Encrypt set up with Traefik.
 * A hostname with DNS set up correctly

## Things to change
 * `docker-compose.yaml` -> `CHANGEME.HOSTNAME` to your hostname
 * `secrets.json.template` -> `<change-me-passsword>` to your admin password
 * `secrets.json.template` -> `<change-me-key>` to your license key
 * Rename `secrets.json.template` -> `secrets.json`
 
## How to Run

```
$ docker-compose up -d
```

Wait a few mins and Foundry VTT will be available at https://hostname/foundry
