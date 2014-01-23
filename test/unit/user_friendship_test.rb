require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "creating friendship works" do
    assert_nothing_raised do
      UserFriendship.create user: users(:alex), friend: users(:milo)
    end
  end

  test "creating user friendship" do
    UserFriendship.create user_id: users(:alex).id, friend_id: users(:milo).id
    assert users(:alex).friends.include?(users(:milo))
  end
end
