#!/usr/bin/env ruby
# generate a fake stream of events for testing

events = [
  'tweet_share',
  'signup',
  'login',
  'tweet_invite'
]

users = [ 'jm3', 'ryan', 'erik', 'vanessa', 'jon', 'kevin' ]

while true
  print "#{Time.now}, #{events[rand(events.size)]}, #{users[rand(users.size)]}\n"
  $stdout.flush
  sleep(rand(5))
end