build_auth_image:
	docker build -t melvinkimathi/auth-go:1.0 -f Dockerfile.auth .

build_catalog_image:
	docker build -t melvinkimathi/catalog-go:1.0 -f Dockerfile.catalog .

build_list_image:
	docker build -t melvinkimathi/list-go:1.0 -f Dockerfile.list .

docker_hub_login:
	docker login || true

push_auth_image: docker_hub_login
	docker push melvinkimathi/auth-go:1.0

push_catalog_image: docker_hub_login
	docker push melvinkimathi/catalog-go:1.0

push_list_image: docker_hub_login
	docker push melvinkimathi/list-go:1.0