task default: ['test:units']

namespace :test do
  desc 'Run the tests'
  task :all do
    Rake::Task['test:units'].invoke
    Rake::Task['test:functionals'].invoke
  end

  desc 'Run the units test'
  task :units do
    ruby 'test/units/temperature_test.rb'
    sh "echo 'teste'"
  end

  desc 'Run the functionals test'
  task :functionals do
    ruby 'test/functionals/temperature_test.rb'
  end
end
