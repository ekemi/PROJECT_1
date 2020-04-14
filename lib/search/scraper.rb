class Scraper

    def scrape_job_page
           
          site = "https://www.indeed.com/jobs?q=ruby%20developer&l=new%20york"

          doc = Nokogiri::HTML(open(site))  #  Give the all HTML   
          doc_css = doc.css('div.row')# String object of title names
          #binding.pry
    

 
    #  def make_job_tile_instance

       # scrape_job_page
       doc_css .each do |job_tile_value|

            job_hash = {} #Empty hash
            # binding.pry
            job_hash["title"] = job_tile_value.css(".jobtitle").text
            #binding.pry

            Job.create_from_hash(job_hash)
           # binding.pry



    #         Jobs.job_index(job_value)  #Module Createa a job instane from every job from doc.ss
         end
     end
end