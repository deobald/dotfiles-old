require 'rake'
 
desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README LICENSE sources gems_to_install generate_completions.clj].include? file
    
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
  
end

namespace :install do

  task :gems do
    File.readlines("gems_to_install").each do |gem_to_install|
      next if gem_to_install.nil?
      sh "sudo gem install #{gem_to_install.gsub(/\n/, "")} --no-rdoc --no-ri"
    end
  end

end

task :generate_clj_completions do
  `clj #{File.dirname(__FILE__) + "/generate_completions.clj"}`
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end
 
def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

