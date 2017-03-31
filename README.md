# stunnel-client

Files for running an stunnel client configuration on a raspberry pi.

Run stunnel client on a Raspberry Pi. This requires an stunnel server somewhere, and a copy of the server's certificate and key.

## Procedure

Step 1: Install stunnel onto the Raspberry Pi.

Step 2: Copy the server certificate and key file onto the Raspberry Pi.

Step 3: Create an stunnel.conf using one of the examples or your own configuration.

Step 4: Copy everything to `/etc/stunnel/.`

Step 5: Run `stunnel`

