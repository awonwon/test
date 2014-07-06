def sum(a, *b, c, &d)
  p a
  p b
  p c
  p d

  #method 1.
  d.call if d #呼叫block如果d存在的話

  #method 2.
  if block_given?
    d.call(100) #把100傳給x
  else
    puts "no proc"
  end
end

sum(1,2,3,x:5, x:6){|x, y|
  p "i'm block"
  p "x: #{x}"
  p "y: #{y}"
  #傳入&d, 沒傳但去call他會GG
}


5.times {|x|
  #i'm block
}


class RubyClass
  def greeting
    secret_method
  end

  protected #代表以下給繼承class使用
  def self_method
    puts "hi, protected ruby"
  end

  private  #代表以下都是私有方法，不給外部使用
  def secret_method
    puts "hi, ruby"
  end
end

class PHPClass <RubyClass
  def use_parent_method
    self_method
  end
end

r = RubyClass.new
r.greeting

ph = PHPClass.new
# 就算繼承RubyClass也無法呼叫ph.secret_method的mehtod
# 除非在PHPClass中使用標記proteced method，而protect method中call private method
ph.greeting
ph.use_parent_method

require 'awonwon'
class Test
    include Awonwon
end

t = Test.new
t.awonwon

include Awonwon
Awonwon::awonwon
