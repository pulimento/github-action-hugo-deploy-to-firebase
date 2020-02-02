# GitHub Action - Hugo and Firebase

This GitHub action build a [Hugo](https://gohugo.io) site, and uploads it to [Firebase Hosting](https://firebase.google.com/docs/hosting/)

- Hugo is a popular static-site generator, that allows you to create a template-based site, and your content is written in Markdown
- Firebase hosting is a cheap option to host your static sites (it has nice things, as a CDN and free HTTPs certs). It's not even needed, you can get the same with [GitHub Pages](https://pages.github.com/)

It needs a Firebase token. You can obtain it installing [firebase-tools](https://github.com/firebase/firebase-tools) and doing `firebase login-ci`.

As the Firebase token is sensitive info, you must save it in a [GitHub secret](https://help.github.com/es/articles/virtual-environments-for-github-actions#naming-conventions)

A simple workload using this action would be something like:

````  
on: [push]
name: Publish blog
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
      with:
        submodules: true
    - uses: pulimento/github-action-hugo-deploy-to-firebase@master
      with:
        firebase-token: ${{ secrets.secret_firebase_token }}
        alias: ${{ some_alias }} // OPTIONAL
````

Happy hacking!
