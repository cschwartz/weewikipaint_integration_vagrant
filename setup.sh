#!/bin/sh
bundle
bundle exec vagrant install
bundle exec vagrant box add lucid32 http://files.vagrantup.com/lucid32.box
bundle exec librarian-chef install
bundle exec vagrant up
