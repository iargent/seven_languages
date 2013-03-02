require 'pp'

ARGV.each do |filename|
  line=0
  File.open(filename).each_line do |l|
    line=line+1
    if l=~/ruby/
      puts "#{line}: #{l}"
    end
  end
end
