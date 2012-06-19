require "test/unit"
require "helper"

class TestAsCurrency < Test::Unit::TestCase

  should "test as_currency method" do
    account = Account.new
    assert_equal('$999.10', account.amount_as_currency)
  end

end
