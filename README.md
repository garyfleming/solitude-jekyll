# Build #

`bundle exec jekyll build`

## Preview ##

`bundle exec jekyll serve`

Then go to localhost:4000

## Publish ##

No longer needed. Covered by GH Actions.

### Build/publish for GH Pages

No longer needed. Covered by GH Actions.


## TODO ##

### Pinboard

Pinboard was having issues so you had to temporarily disable it. The longer term solution is caching and serving the existing pinboard list if there is an issue.

To re-enable later:

* `index.html` has an include_pinboard attribute. This needs to be set to true again.
* `_plugins/pinboard_generator.rb` has the chunk of code that does the generation commented out for now. It needs to be switched back on.

### Archives

The Archive root page is apparently hand-cranked (I've long since forgotten this). Keep it up to date until you automate this
