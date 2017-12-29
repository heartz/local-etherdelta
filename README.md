# local-etherdelta
A simple docker setup to run etherdelta on your local system

# Pre-requisites

* Docker


# Installing

Build the Docker image

	docker build -t "etherdelta-local:0.0.1" --rm=true --no-cache .

Once the image is built, start up a container

	docker run -itd --name="etherdelta" -p 9001:9001 etherdelta-local:0.0.1

Now that is the setup is done, run the server

	docker exec -it etherdelta bash -c "cd etherdelta.github.io && python -m SimpleHTTPServer 9001"


The local version of Etherdelta should be running now, to access it point your browser to [localhost:9001](http://localhost:9001)



## What does this save you from?

* Hacks on Etherdelta domain.
* Attacks on DNS of Etherdelta
* Etherdelta Servers unavailable


## What it won't save you from

* If the Etherdelta smartcontract is compromised