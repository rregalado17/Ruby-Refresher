class WelcomeController < ApplicationController
  before_action :set_values, only: [:home]
  
  def home

  end

  def features
  end
  
  def about
  end

  def contact
  end

  private
  
  def set_values
    @name = "David"
  end

end
