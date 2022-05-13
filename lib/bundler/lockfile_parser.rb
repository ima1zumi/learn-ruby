require 'bundler'

lockfile = Bundler::LockfileParser.new(File.read('Gemfile.lock'))

lockfile.platforms

=begin
["ruby",
#<Gem::Platform:0x000000010967e670
 @cpu="x86_64",
 @os="darwin",
 @version="19">]
=end

lockfile.sources

=begin
[#<Bundler::Source::Git:0x680 https://github.com/komagata/stripe-i18n (at update-depencency@584c711)>,
 #<Bundler::Source::Git:0x700 https://github.com/vcr/vcr.git>,
 #<Bundler::Source::Rubygems:0x720 locally installed gems>]
=end

lockfile.dependencies

=begin
{"abstract_notifier"=>
  Gem::Dependency.new("abstract_notifier",
   Gem::Requirement.new([">= 0"]),
   :runtime),
...
 "bootsnap"=>
  Gem::Dependency.new("bootsnap",
   Gem::Requirement.new([">= 1.4.4"]),
   :runtime),
...
=end

lockfile.specs

=begin
[#<Bundler::LazySpecification:0x0000000107447a98
  @__identifier=["abstract_notifier", Gem::Version.new("0.3.1"), "\u0000"],
  @dependencies=[],
  @name="abstract_notifier",
  @platform="ruby",
  @source=#<Bundler::Source::Rubygems:0x680 locally installed gems>,
  @specification=nil,
  @version=Gem::Version.new("0.3.1")>,
 #<Bundler::LazySpecification:0x0000000107446a80
  @__identifier=["actioncable", Gem::Version.new("6.1.4.4"), "\u0000"],
  @dependencies=
   [Gem::Dependency.new("actionpack",
     Gem::Requirement.new(["= 6.1.4.4"]),
     :runtime),
    Gem::Dependency.new("activesupport",
     Gem::Requirement.new(["= 6.1.4.4"]),
     :runtime),
    Gem::Dependency.new("nio4r", Gem::Requirement.new(["~> 2.0"]), :runtime),
    Gem::Dependency.new("websocket-driver",
     Gem::Requirement.new([">= 0.6.1"]),
     :runtime)],
  @name="actioncable",
  @platform="ruby",
  @source=#<Bundler::Source::Rubygems:0x680 locally installed gems>,
  @specification=nil,
  @version=Gem::Version.new("6.1.4.4")>,
=end

lockfile.specs.each_with_object({}) do |specification, hash|
  hash[specification.name] = specification.version.to_s
end

=begin
{"abstract_notifier"=>"0.3.1",
 "actioncable"=>"6.1.4.4",
 "actionmailbox"=>"6.1.4.4",
=end
