require 'rake'

desc "Reset the environment"
namespace :db do
	task :rebuild do
		sh "rake db:drop:all; rake db:create:all; rake db:migrate; rake db:seed; rails s"
	end
end