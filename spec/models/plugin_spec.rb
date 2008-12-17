require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Plugin do

  it "should create a new instance given valid attributes" do
    plugin = Factory(:plugin)
    plugin.should be_valid
  end
  
  describe "associations" do
    before do
      @plugin = Plugin.new
    end
    
    it "should belong to a system" do
      @plugin.should belong_to(:system)
    end
    
    it "should belong to an owner" do
      @plugin.should belong_to(:owner)
    end
  end

end
