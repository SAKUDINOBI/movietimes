require 'csv'
	namespace :movies do
	  desc "pull movies into database"
	  task seed_movies: :environment do
	     #drop the old table data before importing the new stuff
	     Movie.destroy_all
	

	      CSV.foreach("lib/assets/moviesdb.csv", :headers =>true) do |row |
	      puts row.inspect #just so that we know the file's being read
	     #create new model instances with the data
	      Movie.create!(
	       imdb_id: row[0],
	       title: row[1],
                     year: row[2] .to_i,
	       genre: row[3],
                     country: row[4],
                  
                    director: row[6],
                    description: row[7]
	    )
        
	    end
	  end
	end
