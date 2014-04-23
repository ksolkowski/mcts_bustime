#!/bin/bash 

if [ -e mcts_bustime-0.0.1.gem ]; then 
  rm mcts_bustime-0.0.1.gem
fi 

gem build mcts_bustime.gemspec
sudo gem uninstall mcts_bustime
sudo gem install mcts_bustime-0.0.1.gem