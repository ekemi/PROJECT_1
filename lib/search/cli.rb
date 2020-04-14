class Cli

    def start
      
        puts"Welcome to jobs search!"
             job_main_menu
    end         
          
    def job_main_menu

        puts"Enter the postion  you are looking for? \nor\n\n click exit! if you want to terminate the programm."

        user_input = gets.strip.to_i

         if user_input == 1 
                  #puts "be"
                  Scraper.new.scrape_job_page # create a new instane of my Scraper class 
                 # binding.pry
                  list_available_positions
         
        elsif user_input == 2
              puts"exit!"

        else
            puts "error"
            #error_message 
            job_main_menu

        end               
       
    end

    def  list_available_positions 

        Job.all.each.with_index(1){|name, index| puts "#{index}  #{name.title}" }
        
            

    end
end 