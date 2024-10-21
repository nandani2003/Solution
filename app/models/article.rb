class Article < ApplicationRecord
  include Visible
  has_many :comments,dependent: :destroy
  #ek article can have many comments
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  

#   validate :title_length

#   def title_length
#     if title.length > 5
#       errors.add(:title, "is too long")
#     end
#   end
end
