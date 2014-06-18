# How to Submit a Challenge

We will be using github to submit and review all challenges. There are three standard workflows we will use.

1. [Challenge Submission Workflow](#challenge-submission-workflow)
1. [Challenge Review and Refactor Workflow](#challenge-review-and-refactor-workflow)
1. [Group Project Workflow](#group-project-workflow)

## Daily usage

When you begin using a machine, you must use the `weare` command to log yourself and your pair in. If you're solo, use `iam`. You need to supply your github usernames to the utility. After running `weare`, your prompt should change

```bash
$ weare mattbaker devdame #pairing work
$ iam mattbaker #solo work
```

When you are done with the machine you need to log out.

```bash
$ weare out #or...
$ iam out
```

When you're working on a challenge, you need to use the `pair-branch` utility to checkout a branch with the right name:

```bash
(master)$ pair-branch
(pair-mattbaker,devdame) $ #now you're on a correctly named branch.
```

**Note**: Please use the `pair-branch` utility for solo work too.It helps us keep track of submissions.

## Challenge Submission Workflow

0. Use the `weare` command with your github user namesto log yourself and your pair in. If you're solo, use `iam`:
   ```
   > weare mygithublogin mypairsgithublogin #pair
   > iam mygithublogin #solo
   ```

   You should only need to do this once per day.

1. Create a folder for you and your pair on the Desktop and clone the repository:

  ```shell
  git clone REPOSITORY_PATH
  ```

2. Use `pair-branch` to checkout a branch with the proper naming convention.

  ```shell
  pair-branch # This is an alias for `git checkout -b pair-githubuser1,githubuser2`
  ```

3. Complete your challenge. Commit early and often with meaningful commit messages.

  ```shell
  git add filename
  git commit -m "added test code"
  ```

4. When you have a completed challenge, push your branch to github

  ```shell
  git push -u origin pair-githubuser1,githubuser2
  ```

5.  Go to github and submit a pull request to master from your branch.  **DO NOT MERGE THE REQUEST INTO MASTER.**

## Challenge Review and Refactor Workflow

When completing a challenge review, you will need to get the existing code from a branch on github so the workflow is slightly different.


1.  If you don't already have a local copy of the repository, clone the repository into your local repository

  ```shell
  git clone REPOSITORY_PATH
  ```

  If you do already have a local copy of the repository, make sure the master branch is up to date.

  ```shell
  git checkout master
  git pull origin master
  ```

2. You now need to checkout the branch you are reviewing (which will probably be a fellow boots name). This branch is available to checkout even if you don't see it in the list of branches (you may need to look on github to see the name).

  ```shell
  git checkout pair-githubuser1,githubuser2
  ```

3. From this branch, create a new branch for your review and refactor. Use this naming format:

  ```shell
  git checkout -b refactor-githubuser1,githubuser2
  ```

4. Complete your challenge. Commit early and often with meaningful commit messages.

  ```shell
  git add filename
  git commit -m "added test code"
  ```

5. When you have a completed challenge, push your branch to github

  ```shell
  git push origin refactor-githubuser1,githubuser2
  ```

6. Go to github and submit a pull request to the branch you are reviewing (`pair-githubuser1,githubuser2`) from your branch (`refactor-githubuser1,githubuser2`).  **DO NOT MERGE THE REQUEST.**

## Group Project Workflow

When working on a group project, you will be starting with a brand new repository which you will create as a private repository in the bobolinks-2014 organization.

1. [Create a new repository on github](https://help.github.com/articles/create-a-repo).

2. Clone this repository (empty except for a README.md file) to your local repository.

  ```shell
  git clone REPOSITORY_PATH
  ```

3. Create a branch for each new feature

  ```shell
  git checkout -b featureX
  ```

4. Work on your feature, commit often.

  ```shell
  git add newfile
  git commit -m "added tests to featureX"
  ```

5. When you have working, complete code for your feature, push your branch to github and submit a pull request to master.

  ```shell
  git push origin featureX
  ```

6. Since this pull request is to your team repository, you **CAN** merge into master. A good workflow is to require another teammate to review your pull request and merge it.

7. Before working on a another feature, make sure you always have the latest version of master by first merging any open pull requests on github and then pulling these changes into your local master branch.

  ```shell
  git checkout master
  git pull origin master
  ```
