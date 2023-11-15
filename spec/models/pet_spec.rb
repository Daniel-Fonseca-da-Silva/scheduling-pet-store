require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject { Pet.new(name: 'Anubis', token: '1234567890') }
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:token) }
    it { should validate_length_of(:token).is_at_least(10) }
    it { should validate_uniqueness_of(:name).scoped_to(:token).case_insensitive }
  end

  describe 'scopes' do
    it '.by_token' do
      expect(Pet.where(token: '1234567890').to_sql).to eq Pet.by_token('1234567890').to_sql
    end

    it '.search' do
      expect(Pet.where('LOWER(name) LIKE ?', '%anubis%').to_sql).to eq Pet.search('anubis').to_sql
    end

    it '.sorted_by_name' do
      expect(Pet.order(:name).to_sql).to eq Pet.sorted_by_name.to_sql
    end
  end
end
