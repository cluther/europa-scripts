# Setup

Remove all zenpack repositories.

	zendev each printf "\r" | xargs zendev rm

Add wanted zenpack repositories.

	zendev add my-zenpacks.json

# Synchronize

zendev and all other repositories.

	zendev selfupdate && zendev sync

# Build

Rebuild serviced (a.k.a. Control Center).

	cdz serviced && make clean && make

Rebuild devimg (a.k.a. Zenoss)

	sudo rm -rf $(zendev root)/zenhome/* && zendev build --clean devimg

# Initialize

Blow away serviced configuration and start.

	zendev serviced --reset

Add host to pool.

	serviced host add 172.17.42.1:4979 default

Create and add Zenoss.develop application template.

	cdz && ./add-develop-template

Deploy Zenoss.develop service.

	serviced template deploy <template_id> default develop

# Run

Start the Zenoss.develop service.

	serviced service start Zenoss.develop

# Iterate

Restart Zope client processes after making code changes.

	cdz && ./restart-parts
