class View
  def welcome
    puts "Welcome to your 'clean eating' restaurants ratings app. \nWhat is your zipcode?"
  end
  def get_input
    @input= gets.chomp()
  end
end


