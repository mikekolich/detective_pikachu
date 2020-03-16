lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "detective_pikachu/version"

Gem::Specification.new do |spec|
  spec.name = "detective_pikachu"
  spec.version = DetectivePikachu::VERSION
  spec.authors = ["mikekolich"]
  spec.email = ["mike.kolich@upstart.com"]

  spec.summary =
      "Detective Pikachu (detp) is an investigative tool for jenkins pipeline failures."
  spec.description = <<~HEREDOC
    detp CLI tool allows you to pipe the output of your Jenkins build test failures files into its
    interface and perform nifty investigative tricks that will save you time and headache.
  HEREDOC

  spec.homepage = "https://github.com/mikekolich/detective_pikachu"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mikekolich/detective_pikachu"
  spec.metadata["changelog_uri"] = "https://github.com/mikekolich/detective_pikachu"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "bin"
  spec.executables = ["detp"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
