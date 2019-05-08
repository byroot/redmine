# frozen_string_literal: true

# Set up gems listed in the Gemfile.
puts "Symbol#to_s frozen: #{:foo.to_s.frozen?}"
puts "Module#name frozen: #{Kernel.name.frozen?}"

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

require 'memory_profiler'
MemoryProfiler.start
