UNIX Lesson 2 Challenges
========================

![](https://i.stack.imgur.com/caci5.png)

## Fork our repo

Clone our repo for this lesson: [https://github.umn.edu/ringo025/unix-classes-lesson-2](https://github.umn.edu/ringo025/unix-classes-lesson-2)

## Look at the branches

You can see the branches present in the repo from the dropdown in GitHub's UI.
You can also see the history of the branches with the Network tab (Insights -> Network).

You should be able to see that a *certain individual* has committed to the master branch, to try to rewrite our flawless Rust code into Python.

## Clone the repo

This should be old hat by now; clone the repo.

## Look at the history

You can use `git log` to see the history of this branch, but it's kinda ugly.

`git log --graph --oneline --all` will give you a pretty graph of the history.

## Check Out (and checkout) the other branch

The `feature/better-help` branch has some work towards making  a better CLI for the Rust version.
Run `git checkout feature/better-help` to switch to this branch.

## Revert the Pythonism

`git revert <commit>` undoes a commit.

Try reverting the commit that rewrites the project in Python, then look at history again.

## Merge in the improved Rust code

`git merge <B>` lets you merge branch `<B>` into the current branch.
Do this to merge in the `feature/better-help` branch.

## Push your changes

`git push --all` to push all your changes, then look at the results in the GitHub UI.
