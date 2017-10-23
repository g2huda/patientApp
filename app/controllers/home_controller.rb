class HomeController < ApplicationController
  def index
    @patient = Patient.all
  end

end
