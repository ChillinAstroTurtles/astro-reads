require "rails_helper"

RSpec.describe Category, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should have_many(:categorizations) }
  it { should have_many(:books).through(:categorizations) }
end
