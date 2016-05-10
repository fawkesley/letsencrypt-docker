TAG_NAME=letsencrypt

.PHONY: update-certificate
update-certificate:
	echo hello
	docker build --tag=${TAG_NAME} .
	docker run -ti \
	    --volume "/etc/letsencrypt:/etc/letsencrypt" \
    ${TAG_NAME} \
    /root/letsencrypt-update-certificate
