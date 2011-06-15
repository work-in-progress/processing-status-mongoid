
WARNING: Work in progress - DO NOT USE...

= processing-status-mongoid

A helper gem that uses mongoid to provide processing status information and can be used as the base
for a job processing queue. It is intentionally not integrated into any of the background queue management
systems as I needed this to work across platforms (Scala/Casbah).

The intended usage scenario is to be able to track long running, consecutive and sometimes parallel background tasks which might need to be restarted after failure.

== Install

Include this in your gemfile

gem 'processing-status-mongoid'

== Trivia

This gem was created to the tunes of Natalia Kills.

== Contributing to processing-status-mongoid
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2011 Martin Wawrusch, inc. See LICENSE for
further details.

