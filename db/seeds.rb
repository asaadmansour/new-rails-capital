user1 = User.create!(name: "Alice", dob: "1995-03-15", email: "alice@example.com", phoneNumber: "1234567890", address: "123 Main St")
user2 = User.create!(name: "Bob", dob: "1990-07-22", email: "bob@example.com", phoneNumber: "0987654321", address: "456 Oak Ave")
user3 = User.create!(name: "Charlie", dob: "1988-11-05", email: "charlie@example.com", phoneNumber: "5551234567", address: "789 Pine Rd")

post1 = Post.create!(title: "First Post", content: "Hello World", creator: user1)
post2 = Post.create!(title: "Second Post", content: "Rails is awesome", creator: user2)
post3 = Post.create!(title: "Third Post", content: "Many to many", creator: user1)

PostEditor.create!(post: post1, editor: user2)
PostEditor.create!(post: post1, editor: user3)
PostEditor.create!(post: post2, editor: user1)
PostEditor.create!(post: post3, editor: user2)
PostEditor.create!(post: post3, editor: user3)
