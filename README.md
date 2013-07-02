sinatrastrap
==================

Simple bootstrap for a Sinatra project.

Wat. Wat is this. What's here.
-----------------------
TK

Requirements
-----------------
Assumes you have the `bundler` gem installed.

Install
----------------

Clone this directory, cd to it, then run `bundle install`. This will fetch and install all gem requirements (as specified in the `Gemfile`).

Running the app
----------------
To run the Sinatra app, type:

`rake run`

This will start your local dev server on port 9292, so you should be able to hit `localhost:9292`.

Asset pipeline
----------------
This project it outfitted with CoffeeScript, SCSS and the Slim templating engine.

Slim handles the views and support is baked into Sinatra from `tilt`, so it just works. (Look in `app.rb` for an example of how a template is called with Slim.)

`sinatrastrap` ships with a CoffeeEngine and SCSSEngine and `rake` commands for watching and compiling files.

Sample workflow:

* Write .coffee and .scss files, placing them in `/assets/coffeescript/` or `/assets/scss`, respectively.
* In a new tmux pane or shell tab, run `rake assets:styles` to have SCSS watch the scss dir for changes and compile CSS to `/public/assets/css/`. Note this doesn't return a prompt to you, but I like having a separate pane for scss/coffee processing. You can choose to run it as a bg job, though.
* TK (not working right now): `rake assets:scripts` for CoffeeScript compilation.

Tests!
--------------
`sinatrastrap` ships with RSpec and a basic sample test case for app functionality. Find relevant files in the `/spec/` dir.

To run the tests:

`rake spec`

And watch the green!
