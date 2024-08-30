# dpkg-buildpackage - docker container

If you're packaging up applications in debian packages,
you'll most likely be running `dpkg-buildpackage` to build them.

This container allows you to mount your project and build it.

## Usage

Inside the repo where the `debian` folder is, run:

`docker run -v $(pwd):/package -it -e ghcr.io/lion7/dpkg-buildpackage`

By default, it runs with the following arguments:

`-us -uc`

You can override these defaults by adding them to the end of the command:

`docker run -v $(pwd):/package -it ghcr.io/lion7/dpkg-buildpackage -rfakeroot`
