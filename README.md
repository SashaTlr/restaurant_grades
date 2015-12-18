# restaurants-ratings
command line interface for restaurant ratings


USE ME!
https://data.cityofnewyork.us/resource/43nn-pn8j.json?$select=zipcode,dba,building,%20street,%20phone,grade_date,grade&zipcode=10021&$where=grade_date%20%3E%20%272015%27&$group=dba,grade,zipcode,building,street,phone,grade_date&$order=dba%20ASC

this is our restaurant object
  def initialize(args = {})
    restaurant_name = args[:restaurant_name]
    address = "#{args[:building]} #{args[:street]}"
    zip = args[:zipcode]
    phone = args[:phone]
    grade = args[:grade]
    grade_date = args[:grade_date] 
  end
