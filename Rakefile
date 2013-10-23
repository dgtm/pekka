require 'rspec/core/rake_task'
 
RSpec::Core::RakeTask.new(:spec) 

rule '.rb' => '.y' do |t|
  sh "racc -l -o #{t.name} #{t.source}"
end

task :compile => 'parser.rb'

task :spec => :compile