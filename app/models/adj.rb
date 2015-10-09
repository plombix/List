class Adj < ActiveRecord::Base
	belongs_to :items
	
	# Adj.create!({name: "concept"},{name: "train"},{name: "routine"},{name: "reminder"},{name: "warning"})

end
