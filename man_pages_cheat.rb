def read
	fname = "sample.txt"
	menu_file = File.open(fname, 'r')
	contents = menu_file.read
	puts contents
end 

def cheat_menu
   menu1 = ["CHEAT SHEET", "1) Command Line", "2) Search", "3) Exit"]
   menu1.each {|item| puts item} 
end

def command_menu
	menu2 = ["COMMAND", "1) mv", "2) cp", "3) cd", "4) Exit"]
	menu2.each {|item| puts item}
end	

def search
	puts "What command would you like to search for?"
    command = gets.strip
    puts `man #{command}`
end 

def retry_or_exit
	puts "Not a valid entry."
end 

condition = true
while condition == true

cheat_menu

  cheat = gets.to_i
    case cheat
      when 1
        read 
        command = gets.to_i
          case command 
            when 1 
              puts `man mv`
            when 2
              puts `man cp`
            when 3
              puts `man cd` 
            when 4
              condition =  false  
            else
              retry_or_exit
          end 
      when 2 
      	search

      when 3  
        condition = false
      else 
        retry_or_exit
    end    	
end 

            








