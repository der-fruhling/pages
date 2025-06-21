# Übercord Privacy Policy & Function Description

Übercord's service to allow players to login without a Discord account (hereby the Übercord Provisional Service) requires certain pieces of data to be transmitted to the server in order to verify who you are and if you are allowed to use the service. This service is additionally used by _all_ Discord users using Übercord to manage in-game lobbies.

The Übercord Provisional Service is run by the developer(s) of Übercord (hereby the Mod), which as of writing, consists of: [der_frühling](https://github.com/der-fruhling) only.

## Clarifications

- The primary method of using the service is through a modded Minecraft client, hereby your Client, or on a networked Server, permitting multiple Clients to play online. The Server could be missing the Mod, yet any function not specifically requiring the Server does not transmit information relevant to the Mod to the Server.
- If the Client is online and playing Multiplayer, the server shall be called the Physical Server, and in this case shall assume the responsibilities of the Server.
- If the Client is instead playing Singleplayer, the Client shall assume all responsibilities of the Server and be considered equal, unless specifically a Physical Server is specified, in which, the Client shall NOT assume that responsibility.
- The Mod permits three levels of privacy for Lobbies, the main form of chat it provides:
  - Personal lobbies, which are created by users as smaller group lobbies;
  - Server lobbies, which are created by the server as server-wide lobbies, containing potentially many players;
  - Global lobbies, which are created by users as larger group lobbies.

## Information used

Your Client will transmit the following information to the Provisional Service to provide the functions of the Mod:
- Your unique UUID associated with your Minecraft account;
- Your Minecraft account's username;
- An RSA public key provided by Mojang;
- Your Discord ID;
- The name of any Server lobbies or Personal lobbies that you create or join;
- Your message content that you send to Global lobbies specifically.

The RSA public key, for which the intended use is probably something to do with chat reporting, we just use to confirm that the client actually authorized with Mojang first. This key cannot be used to impersonate or perform malicious activities on the player's account, it's just used to verify signatures and the like.

Additionally, if you are currently using a lobby with the specific "Server Default" flag set (configured by the Server for Server lobbies) then the following data will be sent to the Server (NOT the Provisional Service):
- The message content of your messages sent to such a lobby.

If the Server has chat filtering functionality enabled, additional information will be transmitted to the Provisional Service to support it:
- Your Discord username;
- Your Discord display name;
- Your message content that you send to Server parties with said filtering enabled.

Discord will store information according to its own privacy policy, see here for details: [https://discord.com/privacy](https://discord.com/privacy).

This data will not be stored on our servers under normal circumstances, but if an error occurs, it may appear in logs to help troubleshoot why it broke.

After verifying the data, if successful, the server will respond with a Java Web Token (JWT), which your Client will use to confirm to Discord that you may log into your provisional account. The token is only useful in identifying that you own and can log into your provisional account, and cannot be used with Mojang, Discord, or the Provisional Service otherwise.

## How often this data is transmitted

Your Client will transmit the data as above whenever it starts, and will repeat the authorization roughly every hour to ensure that the Discord token does not expire while the Client is active. 

## How do I delete my provisional account?

If you wish to delete your provisional account, please email us at [ubercord@derfruhling.net](mailto:ubercord@derfruhling.net) with your request. It doesn't have to be much, just indicate your wish to delete your account and include either your Minecraft username at the time or (more helpfully) your Minecraft UUID.

Your current in-game display name is not helpful unless you have not changed it from when you created it, in which case it is just your username anyway.

We cannot delete full Discord accounts for you. If you want to do that, you can do so in Discord's account settings in their app. Provisional accounts are automatically deleted by Discord when merging them into a full account.

If you additionally wish to ensure that your data is not present in any of our logs, you can request for that in your email as well.
