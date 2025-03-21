# README

Rails 8 + Podman kube manifests

* Ruby version: 3.4.2

* System dependencies: Podman

## How to Develop

環境構築
```sh
# Build image
$ bin/build-image

# Start pod
$ podman play kube manifest.dev.yml

# DB initalization
$ podman exec rails8-podman-app bin/rails db:create db:migrate db:seed

# Start development!
$ podman exec -it rails8-podman-app bin/rails s -b 0.0.0.0
```
