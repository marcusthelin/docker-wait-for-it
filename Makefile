publish:
	docker buildx create --use --platform linux/amd64,linux/arm64
	docker buildx build --platform linux/amd64,linux/arm64 -t marcusthelin/wait-for-it --push .
	docker buildx rm