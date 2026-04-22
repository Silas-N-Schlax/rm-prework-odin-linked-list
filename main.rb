require_relative "lib/linked_list"

list = LinkedList.new
list.append("dog")
list.append("cat")
list.append("parrot")
list.append("hamster")
list.append("snake")
list.append("turtle")
list.prepend("fish")
# p list.size
# p list.head
# p list.tail
# p list.at(2)
# p list.pop
# p list.to_s
p list.index("dog")
# p list.contains?("turtle")
p list.to_s
list.insert_at(2, "value", "value 1")
p list.to_s
list.remove_at(2)
p list.to_s
list.update_at(2, "new value")
p list.to_s

# p list
