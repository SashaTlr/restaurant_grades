# https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=dba,zipcode,grade,COUNT(grade)&zipcode=10024&$group=dba,grade,zipcode

# Select zipcode, restaurant names, grade, count of each grade


# https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,grade,grade_date,COUNT(grade)&zipcode=10021&dba=Glorious%20Food&$where%20grade_date%3E2015&$group=grade,zipcode,grade_date&$order=grade_date%20DESC


# https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,dba,grade,COUNT(grade)&zipcode=10021&$where=grade_date%20%3E%20%272015%27&$group=dba,grade,zipcode,grade_date&$order=dba%20ASC


#https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,dba,grade&zipcode=10021&$where=grade_date%20%3E%20%272015%27&$group=dba,grade,zipcode,grade_date&$order=dba%20ASC



class RestaurantModel
  attr_reader :restaurant_name, :cuisine, :address, :zip, :phone
  def initialize(args = {})
    @restaurant_name = args["dba"]
    @cuisine = args["cuisine_description"]
    @address = "#{args["building"]} #{args["street"]}"
    @zip = args["zipcode"]
    @phone = args["phone"]
  end

  def to_s
    "#{cuisine}: #{self.restaurant_name} #{address}"
  end
end

class Directory
  attr_reader :restaurants
 def initialize(restaurants)
  @restaurants = restaurants
 end

  def to_s
    @restaurants.each { |restaurant| restaurant.to_s}
  end
end
