# integration-branch-merge-conflicts action

This action checks if the current branch would produce merge conflicts when merged to a given integration branch.

## Inputs

### `branch`

**Required** The name of the integration branch. Default `"main"`.

## How to use it?
This is a Github action, so it has to be added to a github workflow.  
A simple example of running this action on all pushes to the repository would be
add a `main.yml` file under `.github/workflows` with the following content
```yaml
on: [push]

jobs:
  merge_conflict_job:
    runs-on: ubuntu-latest
    name: Find merge conflicts
    steps:
      # Checkout the source code so we have some files to look at.
      - uses: actions/checkout@v2
        with:
          fetch-depth: 0 #Required : Since we need to read the history
      # Run the actual merge conflict detection
      - name: Merge Conflict detection
        uses: siscodeorg/integration-branch-merge-conflicts@v1.0
```
For this example, each push would trigger the merge conflict detection.