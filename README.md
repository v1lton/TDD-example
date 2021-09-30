# TDD-example
## About
App to learn how to use TDD (Test Driven-Development) practices in an iOS app. We are using the XCTest framework to make the Unity and UI tests. Fell free to help us!

## Credits
We are using the Gera: gerador de cobranças only with learning purposes. We did not had the idea behind the app creation or participed in the app development.
If you are interested in the Gera app, you can find them in the App Store: https://apps.apple.com/br/app/gera-gerador-de-cobran%C3%A7as/id1530482711
Thank you for supporting our learning, Gera Team! 

<!-- Git Flow -->
## Git Flow

### Good Practices
* Always pull before starting to code.

* Always push after completing a task to become functional, let the people on the team know.

* Always make short commits and when you make a small change, don't wait too long to commit something, as maintenance or correction can be complex.

* If you consider a task too risky or that can break the app's operation, create a branch. After completing it, merge it into main.

* If you are going to do a task that will take more than 1 days to do, better create a branch, then merge it into main.

### Add new Feature or fix a Bug

1. Create your Feature or Fix Branch
  * `git checkout -b feature/AmazingFeature`
  * `git checkout -b fix/AmazingFix`
2. Commit your Changes
  * `git commit -m 'Feature(AmazingFeature): Add some AmazingFeature`
  * `git commit -m 'Fix(AmazingFix): Fixes a bug`
3. Push to the Branch
  * `git push origin feature/AmazingFeature`
  * `git push origin fix/AmazingFix`
4. Open a Pull Request in Github's Pull request tab and fill it with the above Pull Request Template.
5. If the Pull Request is not able to merge automatically do the following steps while on your branch:
```sh
git pull develop
```
6. Solves conflicts in Xcode, and commit your changes
7. Add reviewers to your Pull Request and wait for approval.

## Pull Request Template
```sh
### Issue Name
**What I did:**

- First thing I did...

- Second thing I did...

**How to test:**

- Brief notes on how to check if the feature works correctly.
```
