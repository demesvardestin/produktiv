## Produktiv
Produktiv is a super short script for scheduling commits. Useful if you're
trying to pretend to be working at various times of day.

## Usage
Pretty simple to use. Assuming you've got git set up, including remote and branch,
just run:

```
git_job schedule <commit-sha> <remotename> <remotebranchname> <timeinterval>
```

An example would be:

```
git_job schedule 1c7a16e12c57baced54e45b4be3cc0c471611e51 origin master 3

## This particular commit will be pushed to Github/Bitbucket(or any other provider)
## in 3 hours
```

I will be expanding on this to include multi-commit scheduling, and some exception
handlers for cases where a user's git environment hasn't been set up yet.