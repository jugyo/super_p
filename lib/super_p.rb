require "super_p/version"

module SuperP
  class <<self
    attr_accessor :color
  end
end

module Kernel
  def super_p(*args)
    begin
      cols = `tput cols`.to_i
      print SuperP.color || "\e[45;35m"
      puts " " * cols
      puts *args.map { |i| "#{i.inspect}#{' ' * (i.inspect.size % cols)}" }
      puts " " * cols
    ensure
      print "\e[0m"
    end
    args.size == 1 ? args[0] : args
  end

  alias_method :sp, :super_p
end
