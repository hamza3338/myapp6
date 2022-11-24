Sale.destroy_all
Client.destroy_all

20.times do
Client.create([{
                name: "James",
                contact_no: 3324443334,
                age: 3324443334,
                email: "hamza@gmail.com",
                address: "johar town"}])
end
20.times do
  Sale.create([{
                 salesman_name: "James",
                 salesman_contact: 3324443334,
                 client_id: 233
               }])
end
p "Created #{Sale.count} sales"
p "Created #{Client.count} clients"
