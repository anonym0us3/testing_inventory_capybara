require "rails_helper"

describe "deleting a product" do

  let(:name)        { 'Rhinoceros' }
  let(:description) { 'Odd-toed ungulate' }
  let(:category)    { 'Perissodactyla' }
  let(:sku)         { 'newsku' }
  let(:wholesale)   { 1480900 }
  let(:retail)      { 2000000 }

  before do
    # since we're creating the product here (outside of the browser),
    # we must use Database Cleaner's truncation strategy.
    product = FactoryGirl.create(:product)
    visit "/products/#{product.id}"
    @name = product.name
    @sku = product.sku
  end

  it "clicks delete button" do
    click_on 'Delete Product'

  # verify redirect to '/' page
  expect(page.current_path).to match(/\//)

  # verify that show page no longer shows deleted item
  
  end

end