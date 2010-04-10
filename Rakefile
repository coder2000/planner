require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the planner plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the planner plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Planner'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "planner"
    gem.summary = "Planning calendar with events"
    gem.description = "Planning calendar with events"
    gem.email = "coder2000@gmail.com"
    gem.authors = ["Dieter Lunn"]
    gem.files = FileList["[A-Z]*", "{lib}/**/*"]
  end

  Jeweler::GemcutterTasks.new
rescue
  puts "Jeweler, or one of its dependencies, is not available."
end

