require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  # recommended
  test "should save child with a parent#save object when using #build_child method" do
    account = Account.new(:name => "Nicholas")  
    address = account.build_address(:street => "Laurier Avenue")  
    account.save!  
    assert !address.new_record? # => false    
  end
  
  test "should save address with a parent#save when child is assigned to parent" do
    account = Account.new(:name => "Nicholas")
    address = Address.new(:street => "Laurier Avenue")
    account.address = address
    account.save!
    assert !address.new_record? # => false
  end
  
  test "should save parent with a child#save when parent is assigned to child" do
    account = Account.new(:name => "Nicholas")
    address = Address.new(:street => "Laurier Avenue")
    address.account = account
    address.save!
    assert !account.new_record? # => false    
  end
  
  test "should NOT save parent with a parent#save when parent is assigned to child" do
    account = Account.new(:name => "Nicholas")
    address = Address.new(:street => "Laurier Avenue")
    address.account = account
    account.save!
    assert address.new_record? # => true
  end  
  
end
