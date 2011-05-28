# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create([{
:email=>'andre.ortiz@ecommerce.com', :username=>'andreortiz', :password=>'testadmin', :confirm_password=>'testadmin', :firstname=>'Andre', :lastname=>'Ortiz', :is_admin => 1
}])