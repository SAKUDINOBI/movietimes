require 'csv'
	namespace :addresses do
	  desc "pull addresses into database"
	  task seed_addresses: :environment do
	     #drop the old table data before importing the new stuff
	    Address.destroy_all
	

	      CSV.foreach("lib/assets/address.csv", :headers =>true) do |row |
	      puts row.inspect #just so that we know the file's being read
	     #create new model instances with the data
	      Address.create!(
	      street_num: row[0],
           city: row[1],
           county: row[2],
	       postcode: row[3] .to_i
	    )
	    end
	  end
end
