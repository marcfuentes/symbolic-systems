class Comment < ActiveRecord::Base
  attr_accessible :body, :name, :pin_id



 


  belongs_to :pin
end

