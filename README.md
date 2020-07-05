# Build #

`jekyll build`

## Preview ##

`jekyll serve`

Then go to localhost:4000

## Publish ##

From the site root:

`rsync -arvz ./_site/ flemingg@vkps.co.uk:/home/flemingg/solitude.vkps.co.uk`

You'll might need a password, which you can get from 1password under VKPS SSH, but I've
set-up keyless ssh from the iMac.

## TODO ##

Pinboard was having issues so you had to temporarily disable it. The longer term solution is caching and serving the existing pinboard list if there is an issue.

To re-enable later:

* `index.html` has an include_pinboard attribute. This needs to be set to true again.
* `_plugins/pinboard_generator.rb` has the chunk of code that does the generation commented out for now. It needs to be switched back on.
