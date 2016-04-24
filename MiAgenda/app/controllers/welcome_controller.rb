class WelcomeController < ApplicationController
  
  def Index
    @duties = Duty.all
  end
end
