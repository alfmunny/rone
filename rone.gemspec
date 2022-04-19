Gem::Specification.new do |s|
  s.name = 'rone'
  s.version = '0.0.0'
  s.summary = 'Rone is RoR in One'
  s.authors = ['Yuanchen Zhang']
  s.email = 'alfmunny@gmail.com'
  s.files = ['lib/rone.rb', 'lib/rone/categorizable.rb', 'lib/generators/rone/category_generator.rb']
  s.homepage = 'https://github.com/alfmunny/rone'
  s.license = 'MIT'

  s.add_development_dependency 'database_cleaner'
end

