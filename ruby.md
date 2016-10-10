## Notatki z Ruby, v2.3.1
h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
h["a"]           #=> 100
h["c"]           #=> "Go Fish"
# The following alters the single default object
h["c"].upcase!   #=> "GO FISH"
h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
h["c"]           #=> "Go Fish: c"
h["c"].upcase!   #=> "GO FISH: C"
h["d"]           #=> "Go Fish: d"
h.keys           #=> ["c", "d"]

#Array

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]

#Array add

arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

#Array rm

arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]

#array iterate

arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]
