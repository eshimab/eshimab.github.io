

### Update Homebrew

1. Update Homebrew using an "unshallow" clone
```bash
git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
```

Following the guide on: ![Digital Ocean VuePress Intro](https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress)


### Use Homebrew to install `nodejs@18` and `npm` globally

1. Open terminal, use `brew` to find node, install version 18 `node@18`
```bash
brew install node@18
```
2. Use `brew` to install `npm`
```bash
brew install npm
```

## Initiate vuepress project


### Make project `~/scidev/vuebook` directory

Following the guide on: ![Digital Ocean VuePress Intro](https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress)

Make vuepress site directory `scidev/vuebook/` (or just `vuebook`):
```shell
mkdir ~/scidev/vuebook
cd ~/scidev/vuebook
```

### Use `npm` to install `vue` and `vuepress` **locally** in `vuebook`

1. Initialize `vuebook`  as an `npm` project
    ```shell
    npm init --yes
    ```
2.  Use `npm` to install `vue` and `vuepress`
    ```bash
    npm install vue
    npm install vuepress --save-dev
    ```
    - At date of writing, `vue` is at version `3.3.4` and `vuepress` at `1.9.9`
3. Smooth out dependences with `npm upate`
    ```shell
    npm update
    ``` 
    

