#!/bin/bash 

if [ -e mcts_bustime-0.0.1.gem ]; then 
  rm mcts_bustime-0.0.1.gem
fi 

gem build mcts_bustime.gemspec
gem uninstall mcts_bustime
gem install mcts_bustime-0.0.1.gem