class Topic < ApplicationRecord
  
  validates :title, presence: true, length: { maximum: 128 }
  validates :text,  presence: true

  belongs_to :user
  has_many :comments

  def comments_count
  	comments.count
  end

end
