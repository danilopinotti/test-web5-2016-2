task default: ['test:units']

namespace :test do
  desc 'Run the tests'
  task :all do
    Rake::Task['test:units'].invoke
    Rake::Task['test:functionals'].invoke
  end

  desc 'Run the units test'
  task :units do
    sh "echo 'Velocity'"
    ruby 'test/units/velocity_test.rb'

    sh "echo 'Weight'"
    ruby 'test/units/weight_test.rb'
  end

  desc 'Run the functionals test'
  task :functionals do
    sh "echo 'Velocity'"
    ruby 'test/functionals/velocity_test.rb'

    sh "echo 'Weight'"
    ruby 'test/functionals/weight_test.rb'
  end
end
