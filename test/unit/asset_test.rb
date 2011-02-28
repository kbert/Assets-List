require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  def
    test_asset_should_have_votes
      assert_equal 2, assets( :546546546).votes.size
  end
end
