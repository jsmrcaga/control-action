# Control GitHub Action

A simple GitHub Action to execute graph configurations.

With this action you can use Control to run automated tests.

## Usage

On a workflow:
```yaml
name: My Workflo

on:
	pull_request:

jobs:
	test:
		runs_on: ubuntu-latest

		steps:
			- name: Run graphs
			  uses: jsmrcaga/control-action
			  with:
			  	config: ./graph-config.json
