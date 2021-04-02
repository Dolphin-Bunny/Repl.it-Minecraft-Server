# Repl.it-Minecraft-Server
Still a work in progress, and will probably get more features later

This is a tutorial on how to (hopefully) run a Minecraft server off of repl.it / replit.com. This is not really a good way to run a Minecraft server, but you can do it and it does run somewhat ok, even without the hacker plan.

## You will need
1. An account on repl.it

## Steps
1. Clone this repository as a new repl
    a. On the home screen click new repl
    b. Click "import from Github"
    c. Paste the url of this repository in the box
    d. Click the blue button at the bottom
2. In the box to the right, leave language as bash, and paste this into the "run" box
    `make`
3. Click "done" on the right
4. Go to your ngrok dashboard
5. Copy your token
6. Go to the file called `.env`
7. Paste your ngrok token onto the end of line 6
8. You're all done! Click "run" to start your server. After a little while, you should see a box with the server IP address in it on the right.
9. Note: the server address changes each time you start your server
