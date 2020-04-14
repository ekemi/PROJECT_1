class Scraper

    def self.get_job_name(job_name_)
           
          site = "https://www.indeed.com/jobs?q=#{job_name_}"

          doc = Nokogiri::HTML(open(site)) 
    
    def scrape_page      
          doc.css("a.jobtitle")

    end

 
    def make_jobs 

        scrape_page.each do |job_value|
            Module::Jobs.job_index(job_value)
        end


          binding.pry
    end
end