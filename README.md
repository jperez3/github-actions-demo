# github-actions-demo

![wall-e](docs/static/wall-e.jpeg)
### What are Github Actions?

* little automation robots

### Why you should care about Github Actions

* They automate testing, linting, and other processes
* They can expose problems earlier in the development lifecycle
* The learning curve much lower than tools like Jenkins


### Examples of Github Actions

* Automatically test code when a pull request has been created
* Deploys an application when a release is published
* Building containers and uploading them to a repository


### Github Actions Cons

* Interacting with resources that are not accessible via the Internet is tricky
* Local development of github actions can be slow
* New github actions must be merged to `main` branch prior to testing functionality


### Anatomy of a Github Action

1. Event Trigger - an action which kicks off a github action workflow
2. Runner - a robot's operating system
3. Job - a list of instructions for the robot
4. Steps - Individual tasks created by you or the github action community
