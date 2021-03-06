require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.nav a', minimum: 4
    assert_select '.content .product', 3
    assert_select 'h3', 'Programming Ruby 1.9'

    assert_select '.price', /\$[,\d]+\.\d{2}/
  end

  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.store .product img', 3
    assert_select '.product input[type=submit]', 3
  end
end
