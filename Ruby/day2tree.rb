require 'pp'

class Tree
  attr_accessor :children, :node_name
  
  def initialize(tree_hash)
    @children = []
    tree_hash.each do |k,v|
      @node_name=k
        v.each { |a, e| @children << Tree.new(a=>e) }
    end
    
  end
  
  def visit_all(&block)
    visit(&block)
    children.each {|c| c.visit_all(&block)}
  end  
  
  def visit(&block)
    block.call self
  end
  
  def count
    n=1
    children.each {|c| n=n+c.count}
    return n
  end
end

#ruby_tree = Tree.new('Ruby',
#                            [Tree.new('Reia'),
#                             Tree.new('MacRuby')]
#                     )
#
#ruby_tree.visit {|node| puts node.node_name}
#ruby_tree.visit_all {|node| puts node.node_name}
#puts ruby_tree.count

family_tree = Tree.new('grandpa' =>
                       {'dad' => {'child1'=>{}, 'child2'=>{} },
                        'uncle' => {'child3'=>{}, 'child4'=>{} }
                        })

puts family_tree.count
family_tree.visit_all {|node| puts node.node_name}
