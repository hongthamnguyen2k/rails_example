require 'rails_helper'

describe User do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it 'validates name not blank' do
      user = described_class.new
      user.valid?

      expect(user.errors).include? ('name is blank')

    end
  end
end
