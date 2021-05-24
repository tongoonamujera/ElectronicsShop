class HomeController < ApplicationController
  def index
    @cellphones = Cellphone.all
    @laptops = Laptop.all
    @televisions = Television.all
    @home_appliances = HomeAppliance.all
    @headphones = Headphone.all
  end
end