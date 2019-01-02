class Computer
  @@users= {}
  
  def initialize (username, password)
    @username = username
    @password = password
    @files = Hash.new
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new file has been created!"
  end
  
  def update(filename)
    if @files[filename] == nil
      puts "That file does not exist"
    else
      time = Time.now
    	@files[filename] = time
    	puts "The file has been updated"
    end
  end
  
  def delete(filename)
    if @files[filename] == nil
      puts "That file does not exist"
    else
      time = Time.now
    	@files.delete(filename)
    	puts "The file has been deleted"
    end
  end
  
  def Computer.get_users
    return @@users
  end
  
end

my_computer = Computer.new(20763675, "password123")
my_computer.create("asd")