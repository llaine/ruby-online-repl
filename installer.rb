# Write a new gem in the Gemfile folder and install it.
module Installer
  def self.install_gem(gem_name)
    system "echo 'gem \"#{gem_name}\"' >> Gemfile"
    system 'bundle install'
  end

  def self.clean_gemfile
    system "echo 'source \"https://rubygems.org\"' > Gemfile"
  end
end

