require 'rails_helper'

RSpec.describe User, type: :model do

    context 'validation tests' do

     it 'ensures first name presence' do
        user = User.new(last_name: 'Last', email: 'sample@example.com').save
        expect(user).to eq(false)
     end
        
     it 'ensures last name presence' do
        user = User.new(last_name: 'Last', email: 'sample@example.com').save
        expect(user).to eq(false)
     end
     it 'ensures email presence' do
        user = User.new(first_name: 'First', last_name: 'Last').save
        expect(user).to eq(false)
     end
     it 'should save successfully' do
        user = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
        expect(user).to eq(true)
     end
    end

    context 'scope tests' do 
    
    end
end