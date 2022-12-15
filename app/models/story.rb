class Story < ApplicationRecord
  enum status: { draft: 0, published: 1, archived: 2, trashed: 3 }

  # require 'csv'
  # def self.file
  #   file = "public/data.csv"
  #   stories= Story.order(:title, :content)
  #   headers = ["Story ID ", "Title", "Content"]
  #   CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
  #     stories.each do |story|
  #       writer << [story.id, story.title, story.content]
  #     end
  #   end
  # end
  require 'csv'
  def self.to_csv
    story = all
    CSV.generate do |csv|
      csv << column_names
      story.each do |story|
        csv << story.attributes.values_at(*column_names)
      end
    end
  end
end




# def self.file(model)
#   records = model.titleize.constantize.all
#   column_names = model.titleize.constantize.column_names
#
#   headers = []
#   column_names.each do |column_name|
#     headers << column_name.titleize
#   end
#
#   CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
#     records.each do |story|
#       array = []
#       column_names.each do |column_name|
#         array << story.send(column_name.to_sym)
#       end
#       writer << array
#     end
#   end
# end
