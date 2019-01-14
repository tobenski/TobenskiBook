class ApplicationController < ActionController::Base
  def hej
    render html: "Hej Verden!!"
  end
end
