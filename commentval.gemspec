Gem::Specification.new do |s|
  s.name        = 'commentval'
  s.version     = '0.2'
  s.date        = '2015-01-21'
  s.summary     = ""
  s.description = "This gem will check if there the code has sufficient amount of comments. This can be used in tools such as Jenkins to check if the comment meets the expected quantity."
  s.authors     = ["Andrew Moore"]
  s.email       = 'mooreandrew@gmail.com'
  s.homepage    =
    'https://github.com/mooreandrew/commentval'
  s.license       = 'MIT'
  s.add_dependency 'nokogiri', '>= 1.3.15'
  s.files            = ["lib/commentval.rb", "README.md", "LICENSE"]
  s.executables      = ["commentval"]
  s.require_path     = "lib"
end
