require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "signup with wrong parameters" do
    get signup_path

    assert_no_difference "User.count" do
      post users_path, params: { user: { name: "Chironji Lal" } }
    end
  end

  test "successful signup" do
    get signup_path

    assert_difference "User.count", 1 do
      post users_path, params: {
        user: {
          name: "Imirti Devi",
          email: "imirti.devi@example.com",
          password: "password",
          password_confirmation: "password"
        }
      }
    end
  end
end
