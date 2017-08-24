require 'rails_helper'

RSpec.describe Quote, type: :model do
  it 'has a valid Factory' do
    expect(FactoryGirl.build(:quote)).to be_valid
  end
  it 'creates a factory list' do
    FactoryGirl.create_list(:quote,20)
    expect(Quote.all.count).to eq(20)
  end
  let(:quote) { FactoryGirl.create(:quote)}
  it "searchs for an author", :type => :request do
    get '/quotes?name='+quote.author
    expect(JSON.parse(response.body).first['author']).to eq(quote.author)
  end
end
