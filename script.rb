require 'csv'
CSV.open("data.csv", "wb") do |csv|
  csv << ["Story ID", "Title", "Content", "Contact"]
  10.times do
    csv << ["Hamza", "I am Hamza", "0333333333"]
  end
end

require "open-uri"

open("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg") do |image|
  File.open("./test.jpg", "wb") do |file|
    file.write(image.read)
  end
end

# File.exists?("log.txt")

# numbers = ["Hamza", "Ahmad", "Hamza", "Ahmad", "Saddal"]
# puts numbers.uniq