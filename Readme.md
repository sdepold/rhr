Ruby Hypertext Refinement -- the ease of PHP with the elegance of Ruby

Install
=======
    sudo gem install rhr

Usage
=====
    echo 'Hello <%= params["name"] || "RHR" %>' > index.erb
    rhr server
    --> http://localhost:3000
    --> http://localhost:3000/index.erb?name=World

 - Supports [Erb, Haml, Liquid, ... everything](https://github.com/rtomayko/tilt)
 - Does not serve Rakefile / Gemfile / Gemfile.lock + everything starting with `_` or `.`

Layouting
=========

 Put a _layout.<FORMAT> file into the root of the project.
 All pages will be rendered in the `yield`.

    <html>
      <head>
        <title>Amazing</title>
      </head>
      <body><%= yield %></body>
    </html>

Custom Helpers
==============

Put a `helpers.rb` file into the root of the project to get access to custom helpers in the view.
The file should define the `Helpers` class and all methods as class methods:

    class Helpers
      def self.foo
        'bar'
      end
    end

You can now use the `foo` method in the view:

    <div><%= foo %></div>

==>

    <div>bar</div>


TODO (fork!)
====
 - do not use layout if view does something like `no_layout`
 - add helpers like link_to / tag / form
 - escape html in params <-> xss

Author
======
Initial (crazy) idea by [Steffen Schröder](https://github.com/ChaosSteffen)

### [Contributors](http://github.com/grosser/rhr/contributors)
 - [Sascha Depold](http://github.com/sdeplod)

[Michael Grosser](http://grosser.it)<br/>
michael@grosser.it<br/>
Hereby placed under public domain, do what you want, just do not hold me accountable...<br/>
[![Build Status](https://secure.travis-ci.org/grosser/rhr.png)](http://travis-ci.org/grosser/rhr)

