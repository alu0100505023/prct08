$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc 'cargar el rspec'
task :spec do
	sh "rspec -I. spec/matriz_spec.rb"
end

desc 'cargar documentacion'
task :test do
	sh "rspec -I. spec/matriz_spec.rb --format documentation"
end

desc 'ejecutar matriz.rb'
task :bin do
	sh "ruby lib/matriz.rb"
end

desc 'cargar documentacion html'
task :html do
	sh "rspec -I. spec/matriz_spec.rb --format html"
end
