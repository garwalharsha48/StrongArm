require 'rails_helper'

RSpec.describe Admin, :type => :model do
    describe "validations" do
    it { should validate_presence_of :email }
    it 'should validate email format' do
    	admin = FactoryGirl.build(:admin, email: 'fran.gmail.com')
    	expect(admin).to_not be_valid
    end
  end
end
