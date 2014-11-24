# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jared-weather/version"

Gem::Specification.new do |s|
  s.name = "jared-weather"
  s.version = JaredWeather::VERSION
  s.authors = ["cyberarm"]
  s.email = ["matthewlikesrobots@gmail.com"]
  s.homepage = "https://github.com/cyberarm/jared"
  s.summary = "Weather plugin for Jared"
  s.description = "Weather plugin for Jared"

  s.files = Dir["**/**/*.*"]# `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "bin"]

  s.add_runtime_dependency "weatherboy"
end
