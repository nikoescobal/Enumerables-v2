module Enumerable

  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
  end

def my_each_with_index(&fafu)
  i = 0
  while i < self.length
    fafu.call self[i], i
    i += 1
  end
end


  
end


# {1:2, 2:3, 3:4, 4:5}.my_each {|i| print "This is element #{i}.\n"}
# [2,3,5,12].each {|i| print "This is element #{i}.\n"}
# [2,3,5,12].each {|i| print "#{i} "}
[2,3,5,12].my_each_with_index {|i, q| print "#{i} in #{q} \n"}

# def explicit_block(&fafu)
#   fafu.call # same as yield
# end
# explicit_block { puts "Explicit block called" }

