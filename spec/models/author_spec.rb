require "rails_helper"

RSpec.describe Author, type: :model do
  it { should respond_to(:birth_country) }
  it { should respond_to(:gender) }
  it { should respond_to(:twitter_username) }
  it { should respond_to(:author_biography) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
end
