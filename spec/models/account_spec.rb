require 'rails_helper'

RSpec.describe Account, type: :model do
  it { should have_many :users }
end
