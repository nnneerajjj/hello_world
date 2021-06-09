class ApplicationController < ActionController::Base

  def home
    render plain: "I'm like everyone else."
  end
end
