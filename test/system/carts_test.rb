require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  test 'add to cart and empty cart should reveal and hide the cart' do
    CART_LOCATOR = '#cart article'

    visit store_index_url
    assert_no_selector CART_LOCATOR

    first('.catalog li').click_on 'Add to Cart'
    assert_selector CART_LOCATOR

    accept_alert do
      click_on 'Empty cart'
    end
    assert_no_selector CART_LOCATOR
  end
end
