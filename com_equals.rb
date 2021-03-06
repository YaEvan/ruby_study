class Object
  def all_equals(o)
    ops = [:==, :===, :eql?, :equal?]
    Hash[ops.map(&:to_s).zip(ops.map {|s| send(s, o) })]
  end
end
