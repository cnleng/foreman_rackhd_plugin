require 'rake/testtask'

# Tasks
namespace :foreman_rackhd_plugin do
  namespace :example do
    desc 'Example Task'
    task task: :environment do
      # Task goes here
    end
  end
end

# Tests
namespace :test do
  desc 'Test ForemanRackhdPlugin'
  Rake::TestTask.new(:foreman_rackhd_plugin) do |t|
    test_dir = File.join(File.dirname(__FILE__), '../..', 'test')
    t.libs << ['test', test_dir]
    t.pattern = "#{test_dir}/**/*_test.rb"
    t.verbose = true
    t.warning = false
  end
end

namespace :foreman_rackhd_plugin do
  task :rubocop do
    begin
      require 'rubocop/rake_task'
      RuboCop::RakeTask.new(:rubocop_foreman_rackhd_plugin) do |task|
        task.patterns = ["#{ForemanRackhdPlugin::Engine.root}/app/**/*.rb",
                         "#{ForemanRackhdPlugin::Engine.root}/lib/**/*.rb",
                         "#{ForemanRackhdPlugin::Engine.root}/test/**/*.rb"]
      end
    rescue
      puts 'Rubocop not loaded.'
    end

    Rake::Task['rubocop_foreman_rackhd_plugin'].invoke
  end
end

Rake::Task[:test].enhance ['test:foreman_rackhd_plugin']

load 'tasks/jenkins.rake'
if Rake::Task.task_defined?(:'jenkins:unit')
  Rake::Task['jenkins:unit'].enhance ['test:foreman_rackhd_plugin', 'foreman_rackhd_plugin:rubocop']
end
