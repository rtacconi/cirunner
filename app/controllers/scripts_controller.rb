class ScriptsController < ApplicationController
  class Action < ApplicationController
    include FocusedController::Mixin
  end


  class Index < Action
    expose(:scripts) { Dir["#{Rails.root}/app/scripts/*"] }
  end
end
