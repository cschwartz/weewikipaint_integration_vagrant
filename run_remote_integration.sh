#!/bin/sh
bundle exec vagrant up
bundle exec vagrant provision
bundle exec vagrant ssh -c "cd weewikipaint;./jake.sh"
