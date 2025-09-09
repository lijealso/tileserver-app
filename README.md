# tileserver-app

Tileserver GL Light App

This project provides a lightweight deployment of [Tileserver GL](https://github.com/maptiler/tileserver-gl) optimized for cloud platforms such as Render. It is designed to serve vector tiles from `.mbtiles` files, which can be attached as GitHub Release assets.

## Features

- Simple, containerized setup for serving vector tiles
- Uses Tileserver-gl-light for minimal resource usage
- Designed for easy deployment to cloud platforms (e.g., Render)
- Fetches `.mbtiles` files from GitHub Releases for seamless updates

## Usage

1. Prepare your `.mbtiles` file and upload it as a GitHub Release asset in this repository.
2. App deployed in Render using the provided configuration.
3. App will automatically download the `.mbtiles` file and serve tiles.
