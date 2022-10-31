# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "plain_resume"
  spec.version       = "0.1.5"
  spec.authors       = ["RyanxLoi"]
  spec.email         = ["ryanloi@ryanloi.me"]

  spec.summary       = "A simple Jekyll theme for resumes."
  spec.homepage      = "https://github.com/RyanxLoi/plain-jekyll-resume"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.metadata = {
    "documentation_uri" => "https://github.com/RyanxLoi/plain-jekyll-resume",
    "source_code_uri" => "https://github.com/RyanxLoi/plain-jekyll-resume",
    "plugin-type" => "theme"
}

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
