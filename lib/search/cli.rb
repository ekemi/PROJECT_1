class Cli

    def start
      
        puts"Welcome to jobs search!"
        puts"Enter the postion  you are looking for? \nor\n\n click exit! if you want to terminate the programm."



        @job_name = gets.strip.downcase!

         if @job_name != "exit!"
  
             list_available_positions(Scraper.get_job_name(@job_name))
         else
            error_message
         end               
       
    end
end 