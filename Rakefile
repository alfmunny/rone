require 'rake/testtask'

desc "Run test"
task default: :test

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/test_*.rb'
  t.verbose = true
  t.warning = false
end
