require 'rails_helper'
RSpec.describe Order, type: :model do
  subject { Order.new( product_name: "gears", product_count: 7, customer: FactoryBot.create(:customer))}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without product_name" do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without product_count" do
    subject.product_count=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without customer" do
    subject.customer_id=nil
    expect(subject).to_not be_valid
  end
  it "is not valid with not existing customer" do
    subject.customer_id=12345
    expect(subject).to_not be_valid
  end
  it "is sets the counter to 0 if the product counter is the text" do
    subject.product_count="string"
    expect(subject.product_count).to eq 0
  end
end
