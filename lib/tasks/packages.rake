require 'csv'
	namespace :packages do
	  desc "pull packages into database"
	  task seed_packages: :environment do
	     #drop the old table data before importing the new stuff
	     Package.destroy_all
	

	      CSV.foreach("lib/assets/package.csv", :headers =>true) do |row |
	      puts row.inspect #just so that we know the file's being read
	      #create new model instances with the data
	       Package.create!(
	       package_type: row[0],
           price: row[1] .to_d,
	       screens_allowed: row[2] .to_i
	    )
	    end
	  end
	end
