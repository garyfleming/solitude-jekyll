# Build #

`jekyll build`

## Preview ##

`jekyll serve`

Then go to localhost:4000

## Publish ##

From the site root:

`rsync -arvz ./_site/ flemingg@vkps.co.uk:/home/flemingg/solitude.vkps.co.uk`

You'll need a password, which you can get from 1password under VKPS SSH.