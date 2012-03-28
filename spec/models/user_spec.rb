require 'spec_helper'

describe User do
  let(:user) { Factory(:user) }
  it "should respond to name" do
    user.should respond_to :name
  end
end
