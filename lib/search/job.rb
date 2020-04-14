class Job
    
      @@all = []
       attr_accessor :title, :company_name, :easy_to_apply, :summary, :location, :salary, :date_posted

    def self.create_from_hash(hash_value) # Way to initialize a job instane
         hash_value.each do |key, value|
              job = Job.new
              #job.send('#{key}=', value) if job.methods.include?('#{key}='.to_sym)
              #binding.pry
              hash_value.each{|key, value| job.send("#{key}=",value)}
              job.save
         end
    #       job_hash.title = scrape_page.('.jobtitle').text
     end


     def save 

        @@all <<self

     end

     def  self.all

        @@all

     end



end