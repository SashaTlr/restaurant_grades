class View
  def welcome
    puts "Welcome to your 'clean eating' restaurants ratings app. \n What is your zipcode?"
  end
  def get_input
    @input= gets.chomp()
  end
  def list_out_put
    "Edible restaurants are"
  end
end


