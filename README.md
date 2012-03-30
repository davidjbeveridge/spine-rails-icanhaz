# README

spine-rails-icanhaz adds support for ICanHaz views into the Rails
asset pipeline.  They can be used in spine controllers, just like
the eco templates, with the syntax:

```javascript
ich['modelname/filename'](data)
```

## Installation

1. Add `spine-rails-icanhaz` to your Gemfile:

        gem 'spine-rails-icanhaz'

2. Add `icanhaz` to your `index.js.coffee` after the spine require:

        #= require spine
        #= require spine/manager
        #= require spine/ajax
        #= require spine/route
        #= require spine/relation

        #= require icanhaz
        


## Usage

You can load ICanHaz views from your `app/assets/javascripts/app/views`
directory, just like eco views, but using the `ich` object:

        render: ->
          @html ich['addresses/edit'](@item)

The view loaded here would be `app/assets/javascripts/app/views/addresses/edit.ich`


