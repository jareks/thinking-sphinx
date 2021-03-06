require 'yard'
require 'jeweler'

desc 'Generate documentation'
YARD::Rake::YardocTask.new

Jeweler::Tasks.new do |gem|
  gem.name        = "hawkerb-thinking-sphinx"
  gem.summary     = "ActiveRecord/Rails Sphinx library"
  gem.description = "A concise and easy-to-use Ruby library that connects ActiveRecord to the Sphinx search daemon, managing configuration, indexing and searching."
  gem.authors      = ["Pat Allan", "Jaroslaw Skrzypek"]
  gem.email       = "hawk@zenbe.com"
  gem.homepage    = "http://github.com/hawkerb/thinking-sphinx"
    
  # s.rubyforge_project = "thinking-sphinx"
  gem.files     = FileList[
    "rails/*.rb",
    "lib/**/*.rb",
    "LICENCE",
    "README.textile",
    "tasks/**/*.rb",
    "tasks/**/*.rake",
    "VERSION"
  ]
  gem.test_files = FileList[
    "features/**/*",
    "spec/**/*_spec.rb"
  ]
  
  gem.add_dependency 'activerecord', '>= 1.15.6'
  gem.add_dependency 'riddle',       '>= 1.0.8'
  gem.add_dependency 'after_commit', '>= 1.0.5'
  
  gem.post_install_message = <<-MESSAGE
If you're upgrading, you should read this:
http://freelancing-god.github.com/ts/en/upgrading.html

MESSAGE
end
Jeweler::GemcutterTasks.new

