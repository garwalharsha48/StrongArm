require 'rails_helper'

RSpec.describe NewsletterEmail, :type => :model do
    describe "validations" do
    it { should validate_presence_of :email }
    it 'should validate email format' do
    	newsletter = FactoryGirl.build(:newsletter, email: 'fran.gmail.com')
    	expect(newsletter).to_not be_valid
    end
  end
end
