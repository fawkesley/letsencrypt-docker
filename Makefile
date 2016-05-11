TAG_NAME=letsencrypt

.PHONY: update-certificate
update-certificate:
	mkdir -p /etc/letsencrypt/fake-webroot
	docker build --tag=${TAG_NAME} .
	docker run -ti \
	    --volume "/etc/letsencrypt:/etc/letsencrypt" \
    ${TAG_NAME} \
    /root/letsencrypt-update-certificate
