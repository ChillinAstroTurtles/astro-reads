require "rails_helper"

RSpec.describe Book, type: :model do
  it { should have_and_belong_to_many(:authors) }
end
