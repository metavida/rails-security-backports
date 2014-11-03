begin
  require "bundler/gem_tasks"
rescue LoadError
  puts "Bundler not available. Install it with: gem install bundler"
end

#Dir[File.join(File.dirname(__FILE__), "lib/tasks/*.rake")].sort.each { |ext| load ext }

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task :default => :test
