# coding: utf-8

=begin
module Edition
  def edition(n)
    "#{self}第#{n}版"
  end
end

str = "RubyPrograming"

str.extend(Edition)

str2 = "R2"

p str.edition(9)

p str2.edition #未定义的方法,证明拓展是绑定在对象上的
=end

=begin
module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end


class MyClass
  extend ClassMethods

  include InstanceMethods
end


p MyClass.cmethod

p MyClass.new.imethod
=end
