# Agoraculture

## Setup

Once you have cloned the repo, you'll need to make sure your environment is setup.

Things you'll need: 
  
  - Homebrew ($ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
  - Ruby ($ brew install ruby)
  - Rails ($ gem install rails)
  - Rake ($ gem install rake)

## Getting Started:

In terminal (in the directory of the app) begin with 

  $ rake db:migrate

Then do:

  $ rake db:seed

and then do 

  $ rails s

and that should get the app up and running on localhost://3000 in your web browser, where you can interact with the app.

in a different terminal window or tab, run "$ rails c" to open up the rails console where you can toy around with the app and debug.


## License

Agoraculture is MIT Licensed. See LICENSE for details.
