movies = {
  the_avengers: 10
  }

def movies_fn(choice, movies)
  case choice
  when "add" 
  	puts "Enter the movie title: "
  		title = gets.chomp
  	puts "Enter the rating for this movie: "
  		rating = gets.chomp
  	if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
  		puts "The movie was added!"
    else 
      puts "The movie already exists!"
    end
  when "update"
  	puts "Enter the movie title: "
  		title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "The movie has not been added."
    else
      puts "Enter the new rating for this movie:"
  		rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie rating has been updated!"
    end
  when "display"
  	movies.each{|x, y|
      puts "#{x}: #{y}"
      }
  when "delete"
  	puts "Enter the movie title: "
  		title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "The movie has not been added."
    else
      movies.delete(title)
      puts "The movie has been deleted!"
    end
else
  puts "Please choose one of the given choices"
end
end
  
loop { 
  
puts "Enter 'add' to add a movie. \nEnter 'update' to update a movie rating. \nEnter 'display' to display all movie ratings. \nEnter 'delete' to delete a movie rating. \nEnter 'quit' to quit this program."  
choice = gets.chomp
  
  if choice == "quit"
    break
  else
    movies_fn(choice, movies)
  end
  
  }