class Item < ActiveRecord::Base
 # serialize :adj_id, Array3
  has_many :adj

  def adj
  	unless self.adj_id.nil?
  	 tag_list =  Adj.find(self.adj_id)
  	else
  	tag_list = ""
  	end
  	return tag_list
  end
end
