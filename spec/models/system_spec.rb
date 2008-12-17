require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe System do
  before(:each) do
    @system = Factory(:system)
  end

  it "should pass validation with valid attributes" do
    @system.should be_valid
  end
  
  describe "associations" do
    before do
      @system = System.new
    end
    
    it "should have many plugins" do
      @system.should have_many(:plugins)
    end
  end
end
