# forge-radmod-docker

Docker Image for Minecraft Forge Server with the Roguelike Adventures and Dungeons Mod preinstalled.

## usage

### Simple usage

If you want to just play, you can use the following command to start the server.

```
docker run -d -it -p 25565:25565 -v /srv/forge-rad:/srv/forge-rad jmlemmi/forge-radmod-docker
```
Just a quick talk over the options, this command uses:

   * ```-d``` starts the container detached (so in the background)
   * ```-it``` the container is interactive. This is needed for interaction with the Minecraft-Console, eg issuing commands. Without this you can still see the console output, but not interact with it
   * ```-p 25565:25565``` maps the Minecraft Port to the Host. If you run multiple Servers on one Host or want to use a different port, change the Port left of the colon
   * ```-v /srv/forge-rad:/srv/forge-rad``` this is not strictly needed, but I would reccomend it, so you can change settings and backup the world without having to go into the container. The folder right of the colon is fixed. The folder left of the colon should point to the server folder. If you are migrating from an exisitng server, you can just point it to the existing server folder.

The Image auto accepts the EULA, so after running this command, no further action has to be taken to get the server running.

## Links

This Image pulls the Mod directly from curseforges servers: https://www.curseforge.com/minecraft/modpacks/roguelike-adventures-and-dungeons