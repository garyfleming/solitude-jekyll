# Build #

`bundle exec jekyll build`

## Preview ##

`bundle exec jekyll serve`

Then go to localhost:4000

### Build/publish

Coveredf by a GH Action workflow. See `.github/workflows/main.yml` for 
details.



## TODO ##

### Pinboard

Pinboard was having issues so you had to temporarily disable it. The longer term solution is caching and serving the existing pinboard list if there is an issue.

To re-enable later:

* `index.html` has an include_pinboard attribute. This needs to be set to true again.
* `_plugins/pinboard_generator.rb` has the chunk of code that does the generation commented out for now. It needs to be switched back on.

