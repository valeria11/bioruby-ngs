# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bio-ngs}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Francesco Strozzi", "Raoul J.P. Bonnal"]
  s.date = %q{2011-02-21}
  s.default_executable = %q{biongs}
  s.description = %q{bio-ngs provides a framework for handling NGS data with BioRuby}
  s.email = %q{francesco.strozzi@gmail.com}
  s.executables = ["biongs"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/biongs",
    "bio-ngs.gemspec",
    "lib/bio-ngs.rb",
    "lib/bio-ngs/ext/bin/common/sff_extract",
    "lib/bio-ngs/ext/bin/linux/mira",
    "lib/bio-ngs/ext/bin/linux/miramem",
    "lib/bio-ngs/ext/bin/linux/samtools",
    "lib/bio-ngs/ext/bin/linux/ssaha2",
    "lib/bio-ngs/ext/bin/osx/mira",
    "lib/bio-ngs/ext/bin/osx/miramem",
    "lib/bio-ngs/ext/bin/osx/samtools",
    "lib/bio-ngs/ext/bin/osx/ssaha2",
    "lib/bio-ngs/options.rb",
    "lib/bio-ngs/record.rb",
    "lib/bio-ngs/utils.rb",
    "lib/tasks/bwa.thor",
    "lib/tasks/history.thor",
    "lib/tasks/mira.thor",
    "lib/tasks/project.thor",
    "lib/templates/README.erb",
    "test/helper.rb",
    "test/test_bio-ngs.rb"
  ]
  s.homepage = %q{http://github.com/helios/bioruby-ngs}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{bio-ngs provides a framework for handling NGS data with BioRuby}
  s.test_files = [
    "test/helper.rb",
    "test/test_bio-ngs.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<bio>, [">= 1.4.1"])
      s.add_development_dependency(%q<thor>, [">= 0.14.6"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<bio>, [">= 1.4.1"])
      s.add_dependency(%q<thor>, [">= 0.14.6"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<bio>, [">= 1.4.1"])
    s.add_dependency(%q<thor>, [">= 0.14.6"])
  end
end

