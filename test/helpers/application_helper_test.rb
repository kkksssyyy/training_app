require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal full_title,  "Training_App"
    assert_equal full_title("Help"), "Help | Training_App"
  end
end
