require_relative "linked_list/node"
# Linked list class for a linked list
class LinkedList
  attr_accessor :list

  def initialize
    @list = nil
  end

  def append(value)
    if @list.nil?
      @list = Node.new(value)
    else
      temp = @list
      temp = temp.next_node until temp.next_node.nil?
      temp.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @list.nil?
      @list = Node.new(value)
    else
      new_node = Node.new(value)
      new_node.next_node = @list
      @list = new_node
    end
  end

  def size(list = @list, size = 0)
    return size if list.nil?

    size(list.next_node, size + 1)
  end

  def head
    return nil if @list.nil?

    @list.value
  end

  def tail
    return nil if @list.nil?

    get_last_node.value
  end

  def get_last_node(list = @list)
    return list if list.next_node.nil?

    get_last_node(list.next_node)
  end

  def at(index, list = @list, current_index = 0)
    return nil if list.nil?

    return list.value if index == current_index

    at(index, list.next_node, current_index + 1)
  end

  def pop
    return nil if @list.nil?

    temp_head = @list
    @list = temp_head.next_node
    temp_head.value
  end

  def contains?(value, list = @list)
    return false if list.nil?

    return true if list.value == value

    contains?(value, list.next_node)
  end

  def index(value, list = @list, index = 0)
    return nil if list.nil? || list.value == value

    index(value, list.next_node, index + 1)
  end

  def to_s(list = @list, string = "")
    return "#{string}nil" if list.nil?

    to_s(list.next_node, string + "(#{list.value}) -> ")
  end
end
