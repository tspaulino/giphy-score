class Image < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user

  validates_presence_of :giphy_id, :user_id
  validates_uniqueness_of :giphy_id, scope: :user_id

  def giphy_image
    @giphy_image ||= GiphyService.find(self.giphy_id)
  end

end
