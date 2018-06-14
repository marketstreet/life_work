require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should belong_to :organization }
  it { should belong_to :account }
  it { should validate_inclusion_of(:role).in_array(User::ROLES) }
end
