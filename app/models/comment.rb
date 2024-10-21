class Comment < ApplicationRecord
 
  include Visible
   belongs_to :article
  #active record asscoiation
  # har comment belongs to one article
  
 
end
