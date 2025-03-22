# README

Rails 8 + Podman kube manifests + Tailwind CSS

* Ruby version: 3.4.2

* System dependencies: Podman

## How to Develop

開発環境構築
```sh
# Build image
$ bin/build-image-dev

# Start pod
$ podman play kube manifest.dev.yml

# DB initalization
$ podman exec rails8-podman-app bin/rails db:create db:migrate db:seed

# Install node modules
$ podman exec rails8-podman-app yarn install

# Start development!
$ podman exec -it rails8-podman-app bin/dev
```
