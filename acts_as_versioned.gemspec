Gem::Specification.new do |s|
  s.name = 'acts_as_versioned'
  s.version = '0.1'
  s.platform = Gem::Platform::RUBY
  s.summary = "Simple versioning with active record models"
  s.files = Dir.glob("{lib,test}/**/*")
  s.files += %w(README MIT-LICENSE CHANGELOG)
  s.require_path = 'lib'
  s.autorequire = 'acts_as_versioned'
  s.has_rdoc=false # i am a lazy bastard
  s.test_suite_file = 'test/tests.rb'
  s.add_dependency 'activerecord', '>= 1.10.1'
  s.author = "Rick Olson"
  s.email = "technoweenie@gmail.com"
  s.homepage = "http://techno-weenie.net"
end

