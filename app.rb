# Write a new gem in the Gemfile folder and install it.
def install_gem(gem_name)
    system "echo 'gem \"#{gem_name}\"' >> Gemfile"
    system 'bundle install'
end

def clean_gemfile
    system "echo 'source \"https://rubygems.org\"' > Gemfile"
end

gem = ARGV.first

if gem == 'clean'
    puts 'Cleaning Gemfile'
    clean_gemfile
    exit 1
end

puts "Installing #{gem} ... "

install_gem gem

puts 'Gem installed !'

exit 1

