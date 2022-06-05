# Circle CI playground

[![CircleCI](https://circleci.com/gh/Xesenix/circleci-playground/tree/main.svg?style=svg)](https://circleci.com/gh/Xesenix/circleci-playground/tree/main)

Testing circle CI pipelines.

## Notes

It is important to persist o workspace only new files created by job so when you join results of multiple jobs they don't conflict between eachother. Also each job should be responsible for creating diffrent files.