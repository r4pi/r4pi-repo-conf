# r4pi repo config

This repo contains the tooling necessary to build the r4pi repository configuration package.

Generating a new version of the deb automatically creates an identical version with the called `r4pi-repo-conf_0.0.1-1_all.deb`.

This should be transferred to `https://pkgs.r4pi.org/dl/` in order that automation built on the automatic configuration of the dep repo continues to work.

This also means that, after the package is installed, running `apt upgrade` will upgrade a user to the "proper" package version, even though it has the same content.

## Notes

To generate the ascii armoured version of the key:

``` bash
gpg --export -a r4pi@5vcc.com > r4pi.asc
```

The ascii version of the key must be copied to the packages site like so:

``` bash
cp r4pi.asc ../packages/pkgbinrepo/dl/
```
