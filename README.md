# Azure Cosmos DB Emulator Setup Guide Using `cosmos-emulator.sh` for Intel Mac

This guide provides step-by-step instructions on how to set up the Azure Cosmos DB Emulator in a Docker container using the `cosmos-emulator.sh` script.

## Step 1: Run the `cosmos-emulator.sh` Script

1. Open a terminal window.
2. Navigate to the directory containing the `cosmos-emulator.sh` script.
3. Execute the script:

```sh cosmos-emulator.sh```

This script retrieves your local IP address, pulls the Azure Cosmos DB emulator Docker image, and starts the Docker container.

## Step 2: Download the Emulator's Certificate

1. Once the Docker container is up and running, open a new terminal window.
2. Download the emulator's SSL certificate:

```curl -k https://localhost:8081/_explorer/emulator.pem > ~/emulatorcert.crt```

This command saves the certificate as `emulatorcert.crt` in your home directory.

## Step 3: Install the Localhost Certificate on macOS

1. Navigate to the certificate's location (by default, it's your home directory):

2. Open the directory in Finder:

```open .```

3. Locate `emulatorcert.crt` and double-click to open it in Keychain Access.
4. In Keychain Access, find the `localhost` certificate.
5. Double-click on the certificate.
6. In the dialog, expand the "Trust" section.
7. Set "When using this certificate" to "Always Trust".
8. Close the dialog and authenticate if prompted.

## Step 4: Verify the Setup

* Access the Azure Cosmos DB Emulator's web interface at `https://localhost:8081/_explorer/index.html` in your browser. There should be no SSL errors. 
* You should be able to connect to the Cosmos Emulator through the SDK
