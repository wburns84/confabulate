require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/test_*.rb']
  t.verbose = true
  t.libs = ['test']
end

task :default => [:test]
