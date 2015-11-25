require 'elasticsearch/rails/tasks/import'


task :refresh_es => :environment do
  Place.__elasticsearch__.create_index! force: true
  Place.__elasticsearch__.refresh_index!

  Place.import
end
