# Circle CI playground

[![CircleCI](https://circleci.com/gh/Xesenix/circleci-playground/tree/main.svg?style=svg)](https://circleci.com/gh/Xesenix/circleci-playground/tree/main)

Testing circle CI pipelines.

## TODO:


## Notes

### Workspace

It is important to persist to workspace only new files created by job. So, when you join results of multiple jobs they don't conflict between eachother. Also each job should be responsible for creating diffrent files.

### NPM install caching

When installing node modules via pipeline you should use cache with one exact key. Check if node_modules folder was restored and if not run clean install `npm ci`

```yml
- restore_cache:
    keys:
      - node-package-v1-{{ checksum "package-lock.json" }}
- run:
    command: |
      [ ! -d node_modules ] && npm ci || echo 'Using cached node_modules'
- save_cache:
    key: node-package-v1-{{ checksum "package-lock.json" }}
    paths:
      - "node_modules"
```
