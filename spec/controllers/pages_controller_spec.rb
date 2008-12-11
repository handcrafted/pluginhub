require File.dirname(__FILE__) + '/../spec_helper'

describe PagesController do
  
  it "GET index should redirect to the 'home' page" do
    get :index
    response.should redirect_to(page_url("home"))
  end


  describe "GET 'show'" do
    
    
    it "without an id" do
      #Page.should_receive(:find_by_permalink).with("home").and_return(@page)
      get 'show'
      response.should be_success
    end
  
    it "with an id" do
      get 'show', :id => "home"
      response.should be_success
    end
    
    it "should raise an error if the template is missing" do
      lambda do
        get 'show', :id => "crazy_uncreated_id"
      end.should raise_error
    end
  end
  
  
end
