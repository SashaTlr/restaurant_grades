require 'open-uri'
require 'JSON'
require_relative 'model'
require 'pry'
require_relative 'view'

class Controller
  attr_reader :restaurant_info, :restaurant_directory, :full_rest_list

  def initialize(find_zipcode)
  @rest_args = JSON.parse(open("https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,dba,building,cuisine_description,street,phone&zipcode=#{find_zipcode}&grade=A&$where=grade_date%20%3E%20%272015%27&$group=dba,zipcode,building,street,cuisine_description,phone&$order=dba%20ASC").read)
  @full_rest_list = Directory.new(@rest_args.map { |args| RestaurantModel.new(args) })
  run_method
  end

  def run_method
    binding.pry
    puts @full_rest_list.restaurants
  end


end


viewer= View.new
viewer.welcome
zip_code = viewer.get_input
Controller.new(zip_code)
