require 'csv'
	namespace :customers do
	  desc "pull customers into database"
	  task seed_customers: :environment do
	     #drop the old table data before importing the new stuff
	     Customer.destroy_all
	

	      CSV.foreach("lib/assets/customer.csv", :headers =>true) do |row |
	      puts row.inspect #just so that we know the file's being read
	     #create new model instances with the data
	      Customer.create!(
	       first_name: row[0],
	       last_name: row[1],
           credit_value: row[2] .to_i,
	       paid: row[3]
	    )
	    end
	  end
	end
