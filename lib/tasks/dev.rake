#desc "Hydrate the database with some sample data to look at so that developing is easier"
#task({ :sample_data => :environment}) do
#end
desc "Fill the database tables with some sample data"
task({ :sample_data => :environment}) do

3.times do
user = User.new
user.name = "Pat"
user.save
end

end