




# MkDocs Details

## Create and host local HTML Site using MkDocs in the python3 `venv`

1. Open a new Terminal window because MkDocs will be actively monitoring for updates and refreshing the local website
2. Start the local server
```bash
mkdocs serve
```

Example Output:
```
INFO     -  Building documentation...
INFO     -  Cleaning site directory
INFO     -  Documentation built in 0.06 seconds
INFO     -  [10:50:41] Watching paths for changes: 'docs', 'mkdocs.yml'
INFO     -  [10:50:41] Serving on http://127.0.0.1:8000/
```

The website will be avilable at: `http://127.0.0.1:8000/`  which you can view in a web browser.

Now leave this Terminal instance running and let it update the site in the background. I will call this the Mkdocs Server Terminal or similarly.

**Open a new terminal window**

Get an example page from Mkdocs and send it to the Mkdocs website directory `notesite`
```bash
curl 'https://jaspervdj.be/lorem-markdownum/markdown.txt' > /Users/eshim/scidev/notesite/docs/about.md
```

In the Mkdocs Server Terminal you will see an update as it adds the new webpage:
```
INFO     -  [11:36:50] Detected file changes
INFO     -  Building documentation...
INFO     -  Documentation built in 0.07 seconds
INFO     -  [11:36:50] Reloading browsers
INFO     -  [11:36:50] Browser connected: http://127.0.0.1:8000/
```

Edit the `mkdocs.yml` file in `~/scidev/notesite`
```yaml
site_name: Super Fun Digressions # site_name and site_url are the only required fields
site_url: https://example.com # https://example.com is a placeholder value
nav: 
    - Home: index.md
    - About: about.md
```

And update the `mkdocs.yml` to use that plug-in:
```yaml
site_name: Super Fun Digressions # site_name and site_url are the only required fields
site_url: https://example.com # https://example.com is a placeholder value
nav: 
    - Home: index.md
    - About: about.md
    - vscode: vsnotes.md
    - Github Setup: shellnotes.md 

plugins:
  - img2fig
```

Now when you run `mkdocs serve` it will properly use the `img2fig` plugin:

![mkdocs serve with img2fig plugin enabled](notesite/img/mkDocsExample-enablingPackage.png)

