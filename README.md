# Repl.it-Minecraft-Server
Still a work in progress, and will probably get more features later

This is a tutorial on how to (hopefully) run a Minecraft server off of repl.it / replit.com. This is not really a good way to run a Minecraft server, but you can do it and it does run somewhat ok, even without the hacker plan.

## You will need
1. An account on repl.it / replit.com
2. A ngrok account

## Steps
1. Clone this repository as a new repl<br>
    a. On the home screen click new repl<br>
    b. Click "import from Github"<br>
    c. Paste the url of this repository in the box<br>
    d. Click the blue button at the bottom<br>
2. Click "done" on the right
3. Go to your ngrok dashboard
4. Copy your token
5. Go to the file called `.env`
6. Paste your ngrok token onto the end of line 6
7. You're all done! Click "run" to start your server. 
8. You must agree to the Minecraft EULA in order to start the server. Press enter if you do, or ctrl+c to exit if you do not.
9. If you agreed, stuff should install and your server will eventually start.
10. After a little while, you should see a box with the server IP address in it on the right.
11. Note: the server address changes each time you start your server
12. Note: your server may still be starting when the server address becomes visible. If this is the case, wait until your server has finished starting.

## Troubleshooting
#### Connection timing out
Make sure the server address you have used is correct.<br>
If it is, try restarting the server.

#### "Disconnected" when joining server
Restart the server.

#### Server running out of memory
There isn't really anything you can do for this that I know of except move to a different hosting provider.

#### Server stopping (after repl.it page is closed)
You can try creating a https monitor on uptimerobot for the webpage of the server, or just leave the repl.it page open.

#### Server stopping (with repl.it page open)
There are several causes for this, but you can generally just start the server back up again.

## Advanced usage
1. You can change the .env file entry called "hacker_plan" to "true" if you have the hacker plan on repl.it, but it is not required.
2. You can change the "mc_version" .env file entry to the version you are using for your server. This will not change the version of server you are using, it is just displayed on the webpage.
