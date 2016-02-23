class Image < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :giphy_id
  validates_uniqueness_of :giphy_id, scope: :user_id

end
