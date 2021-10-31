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
```

## Inputs

There are 3 total inputs you can use as configuration for this action:

### `config`

`config` is the path to your Control CLI configuration. This action does not yet support
CLI flag overrides, so you should have a config file ready.

For more info cehck the control-core repository.

### `global`
This input dictates if the action will run Control as a global command instead of using
it as a dependency of your code.

Please note that by default this action will try to use Control from your `node_modules` folder.

This is by design. Control performs some class-checks on Nodes, and running a global version as CLI
won't allow you to add custom Nodes (global Node class is different from installed Node class).

If you don't use Control as a dependency (ie: don't have custom nodes) you can set this to true.

### `install_control`

This is an override to install control locally. If for whatever reason you don't have it in your dependencies
but need it to be installed (performing tests on a non-node repo for example).
