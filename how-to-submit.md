# How to Submit a Challenge

We will be using github to submit and review all challenges.  There are three standard workflows we will use.

## Challenge Submission Workflow

1. Clone the repository into your local repository 

```shell
git clone  REPOSITORY_PATH
```

2.  Create a branch named YOUR_NAME (if solo) or PAIR_NAME_1-AND-PAIR_NAME_2 (if working in a pair) and checkout this branch.  **Note:** please use first name and last initial or full names to avoid confusion.

```shell
git checkout -b StrandM-AND-AnneS
```
3. Complete your challenge.  Commit early and often with meaningful commit messages. 

```shell
git add filename
git commit -m "added test code"
```

4. When you have a completed challenge, push your branch to github

```shell
git push origin StrandM-AND-AnneS
```

5. Go to github and submit a pull request to master from your branch. 
**Do not (DO NOT) ever (EVER) merge a pull request into master. **

6. A teacher or fellow boot will review your code by commenting on your pull request.  

## Challenge Review and Refactor Workflow

When completing a challenge review, you will need to get the existing code from a branch on github so the workflow is slightly different. 


1. If you don't already have a local copy of the repository, clone the repository into your local repository 

```shell
git clone  REPOSITORY_PATH
```

If you do already have a local copy of the repository, make sure the master branch is up to date.

```shell
git checkout master
git pull origin master
```

2. You now need to checkout the branch you are reviewing (which will probably be a fellow boots name). This branch is available to checkout even if you don't see it in the list of branches (you may need to look on github to see the name).

```shell
git checkout StrandM-AND-AnneS
```

3.  From this branch, create a new branch for your review and refactor.

```shell
git checkout -b StrandM-AND-AnneS-refactor
```
4. Complete your challenge.  Commit early and often with meaningful commit messages. 

```shell
git add filename
git commit -m "added test code"
```

5. When you have a completed challenge, push your branch to github

```shell
git push origin StrandM-AND-AnneS-refactor
```

5. Go to github and submit a pull request to the branch you are reviewing (`StrandM-AND-AnneS`) from your branch (`StrandM-AND-AnneS-refactor`). 
**Do not (DO NOT) merge your pull request.**

6. A teacher or fellow boot will review your code by commenting on your pull request.  

## Group Project Workflow

When working on a group project, you will be starting with a brand new repository.  
