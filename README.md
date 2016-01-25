vim.ksmith.io
============

## Quickstart
```
## building / running locally
$ make {build|run}

## deploying latest master to dokku
$ git push dokku master
```

## Dokku Setup
```
## assuming ~/.ssh/config has dokku.me pointing at your dokku box

## create new application
$ ssh -t dokku@dokku.me apps:create vim.ksmith.io

## set custom domain name
$ ssh -t dokku@dokku.me domains:add vim.ksmith.io vim.ksmith.io

## add git remote
$ git remote add dokku dokku@dokku.me:vim.ksmith.io
```
