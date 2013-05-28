require 'spec_helper'

describe ScriptsController do
  include FocusedController::RSpecHelper

  describe "GET 'index'" do
    it "returns http success" do
      response.should be_success
    end
  end

end
