require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "Site layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", static_pages_help_path
    assert_select "a[href=?]", static_pages_about_path
    assert_select "a[href=?]", static_pages_contact_path
  end
end
