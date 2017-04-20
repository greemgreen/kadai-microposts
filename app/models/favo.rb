class Favo < ApplicationRecord
  belongs_to :user
  belongs_to :starr, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :starr_id, presence: true
end
