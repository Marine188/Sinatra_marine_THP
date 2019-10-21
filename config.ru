require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__) #prendre en compte tous les fichiers dans le dossier lib
require 'controller.rb'
run ApplicationController
