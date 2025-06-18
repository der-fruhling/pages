# Übercord Provisional Service Privacy Policy

Übercord's service to allow players to login without a Discord account (hereby the Übercord Provisional Service) requires certain pieces of data to be transmitted to the server in order to verify who you are and if you are allowed to use the service.

The provisional service is run by the developer(s) of Übercord, which as of writing, consists of: [der_frühling](https://github.com/der-fruhling) only.

The primary method of using the service is through a modded Minecraft client, hereby your Client. Any other use outside this primary method is not supported and may not be properly covered here.

## Information used

Your Client will transmit the following information to provide the provisional service:
- Your unique UUID associated with your Minecraft account;
- Your Minecraft account's username;
- An RSA public key provided by Mojang, for which the intended use is probably something to do with chat reporting, but here we just use it to confirm that the client actually authorized with Mojang first. This key cannot be used to impersonate or perform malicious activities on the player's account, it's just used to verify signatures and the like.

This data will not be stored on our servers under normal circumstances, but if an error occurs, it may appear in logs to help troubleshoot why it broke.

After verifying the data, if successful, the server will respond with a Java Web Token (JWT). The token is only useful in identifying that you own and can log into your provisional account, and cannot be used with Mojang or Discord otherwise.

## How often this data is transmitted

Your Client will transmit the data as above whenever it starts, and will repeat the authorization roughly every hour to ensure that the Discord token does not expire while the Client is active. 

## How do I delete my provisional account?

If you wish to delete your provisional account, please email us at [ubercord@derfruhling.net](mailto:ubercord@derfruhling.net) with your request. It doesn't have to be much, just indicate your wish to delete your account and include either your Minecraft username at the time or (more helpfully) your Minecraft UUID.

Your current in-game display name is not helpful unless you have not changed it from when you created it, in which case it is just your username anyway.

We cannot delete full Discord accounts for you. If you want to do that, you can do so in Discord's account settings in their app. Provisional accounts are automatically deleted by Discord when merging them into a full account.

If you additionally wish to ensure that your data is not present in any of our logs, you can request for that in your email as well.
