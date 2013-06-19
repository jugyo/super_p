require "super_p/version"

module SuperP
  class << self; attr_accessor :color; end
  self.color = "\e[45;35m"
end

module Kernel
  def super_p(*args)
    cols = `tput cols`.to_i
    puts
    print SuperP.color
    puts " " * cols
    args.each do |i|
      text = i.inspect
      padding = if text.size <= cols
          cols - text.size
        else
          cols - text.size % cols
        end
      puts text + " " * padding
    end
    puts " " * cols
    print "\e[0m"
    puts " " * cols

    args.size == 1 ? args[0] : args
  rescue
    print "\e[0m"
  end

  alias_method :sp, :super_p
end
