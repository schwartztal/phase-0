# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# CORRECT
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# CORRECT
# p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# CORRECT
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! { |element|
  if element.kind_of?(Array)
    element.map! { |inner| inner += 5 }
  else element += 5
  end
}

 # p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names = ["bit", ["find", "fast"]]


startup_names.map!  { |element|
    if element.kind_of?(Array)
      element.map! { |inner| if inner.kind_of?(Array)
            inner.map! { |inner3| inner3.to_s + "ly"}
          else  inner.to_s + "ly" end
      }
    else element.to_s + "ly"
  end
}

p startup_names

=begin

What are some general rules you can apply to nested arrays?
  When trying to find a relative position, start from the desired element and count "out".

What are some ways you can iterate over nested arrays?
.each and .map are what we used, then call .each or .map again for each level of nesting that applies

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
Lifted right from the instructions but we used .kind_of? to find the nested arrays that were then iterated on again.

end