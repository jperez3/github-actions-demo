# github-actions-demo


### Checkov

* [Checkov](https://github.com/bridgecrewio/checkov) is a static security analyzer for Infrastructure-as-Code

* Running checkov: `checkov -d terraform/modules/s3`
* Running checkov with exclusion: `checkov -d terraform/modules/s3 --skip-check CKV_AWS_18`



### Act

* [Act](https://github.com/nektos/act) is a tool that allows you to run github actions locally

* The act container is HEAVY: `docker image ls`

```
REPOSITORY                       TAG          IMAGE ID       CREATED         SIZE
nektos/act-environments-ubuntu   18.04-full   d74dd75edae2   11 months ago   35GB
```

* Running act: `act pull_request -P ubuntu-latest=nektos/act-environments-ubuntu:18.04-full`

* `Act` pros:
  * no checking in code and waiting for the workers/runners


* `Act` cons:
  * flags seem to be hit or miss (eg. I wasn't able to get it to differentiate specific jobs to run)
  * Huge container image is basically required


### Docker build example

* Check out `.github/workflows/docker-example.yml`
* Go to `docker-example` in [Github Actions](https://github.com/jperez3/github-actions-demo/actions?query=workflow%3Adocker-example)
* Run workflow
