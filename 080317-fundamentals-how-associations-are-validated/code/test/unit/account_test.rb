require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  test "parent is saved when child is invalid" do
    account = Account.new(:name => "Nicholas")
    address = account.build_address(:city => "Ottawa")
    account.skip_validation_on_address = true
    account.save! # => true
    assert !account.new_record?
    assert address.new_record?
  end
  
  test "parent is NOT saved when child is invalid when account validates child model" do
    account = Account.new(:name => "Nicholas")
    address = account.build_address(:city => "Ottawa")
    assert_raise ActiveRecord::RecordInvalid do
      account.save!
    end
    assert account.new_record?
    assert address.new_record?
  end
  
end
