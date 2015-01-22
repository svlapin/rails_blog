require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert users(:two).login == 'Saly'
  end
end
