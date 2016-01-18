Gem::Specification.new do |s|
  s.name     = 'faraday_naive_cache'
  s.version  = '0.0.1'
  s.authors  = ['Victor Shepelev']
  s.email    = 'zverok.offline@gmail.com'
  s.homepage = 'https://github.com/zverok/faraday_naive_cache'

  s.summary = 'Dumb & naive cache middleware for Faraday'
  s.licenses = ['MIT']

  s.files = `git ls-files`.split($RS).reject do |file|
    file =~ /^(?:
    spec\/.*
    |Gemfile
    |Rakefile
    |\.rspec
    |\.gitignore
    |\.rubocop.yml
    |\.travis.yml
    )$/x
  end
  s.require_paths = ["lib"]

  s.add_dependency 'addressable'

  s.add_development_dependency 'faraday'
end
