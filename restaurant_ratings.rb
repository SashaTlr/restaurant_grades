require 'open-uri'
require 'JSON'
require 'pry'
require_relative 'view'
class Controller
  attr_reader :viewer, :restaurant_info, :restaurant_directory

  def initialize(file)
    @data_file = open(file)
    @hash_data = JSON.parse @data_file.read
    @viewer = View.new
    @restaurant_directory = @hash_data.map {|restaurant_info| Restaurant.new(restaurant_info)}
    run_restaurant
  end



  def run_restaurant
    @viewer.welcome

    @viewer.list_out_put
  end

end


 Controller.new("https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,dba,building,cuisine_description,street,phone&zipcode=10021&grade=A&$where=grade_date%20%3E%20%272015%27&$group=dba,zipcode,building,street,cuisine_description,phone&$order=dba%20ASC")
