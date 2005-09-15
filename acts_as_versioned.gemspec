Gem::Specification.new do |s|
  s.name = 'acts_as_versioned'
  s.version = '0.1'
  s.platform = Gem::Platform::RUBY
  #s.summary = "Sentry provides painless encryption services with a wrapper around some OpenSSL classes"
  s.files = Dir.glob("{lib,test}/**/*")
  #s.files << "README"
  s.files << "MIT-LICENSE"
  s.files << "CHANGELOG"
  s.require_path = 'lib'
  s.autorequire = 'acts_as_versioned'
  s.has_rdoc=false
  #s.test_suite_file = 'test/tests.rb'
  s.author = "Rick Olson"
  s.email = "technoweenie@gmail.com"
  s.homepage = "http://techno-weenie.net"
end

