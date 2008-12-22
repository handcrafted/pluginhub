require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe System do
  
  describe "validations" do

    it "should pass with valid attributes" do
      system = Factory(:system)
      system.should be_valid
    end
    
    it "should validate presence of several attributes" do
      system = System.new
      system.should validate_presence_of(:subdomain)
      system.should validate_presence_of(:system_url)
      system.should validate_presence_of(:name)
      system.should validate_presence_of(:description)
    end
    
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
