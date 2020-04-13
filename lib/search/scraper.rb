class Scraper

    def self.get_job_name(job_name_)
           
           site = "https://www.indeed.com/jobs?q=#{job_name_}"
          doc = Nokogiri::HTML(open(site))  

          section = doc.css("a.jobtitle")
          binding.pry
    end
end