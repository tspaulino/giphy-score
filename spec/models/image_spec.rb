require 'rails_helper'

RSpec.describe Image, type: :model do
  it { is_expected.to validate_presence_of(:giphy_id) }

  #Context to validate case-sensitivity for giphy_id
  describe "gyphy's id uniqueness" do
    before do
      subject.giphy_id = "foo"
    end
    it { is_expected.to validate_uniqueness_of(:giphy_id).scoped_to(:user_id) }
  end

  it { is_expected.to belong_to(:user) }
end
