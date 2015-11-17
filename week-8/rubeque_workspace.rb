class Array
  def to_hash_values(&block)
     h = {}
     self.each{|x| h[x] = yield(x)}
   return h
  end
end

ary = [1,2,3,4,5]
#Keys should be double
result = ary.to_hash_values{|a| a*2}
p result
# assert_equal(result[2], 1)
# assert_equal(result[6], 3)
# assert_equal(result[10], 5)

#Keys should be string of value
result2 = ary.to_hash_values{|a| a.to_s}
p result2
# assert_equal(result["1"], 1)
# assert_equal(result["3"], 3)
# assert_equal(result["5"], 5)