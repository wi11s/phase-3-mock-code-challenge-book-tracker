# consider hard coding IDs if you think you might replant at some point

puts "Creating publishers..."
Publisher.create(name: "Harper Collins", founding_year: 1998, money: 1000)
Publisher.create(name: "Simon and Schuster", founding_year: 2004, money: 1000)
Publisher.create(name: "Macmillan", founding_year: 1956, money: 1000)
Publisher.create(name: "Hachette", founding_year: 1995, money: 1000)
Publisher.create(name: "Penguin Random House", founding_year: 1995, money: 1000)

puts "Creating books..."
Book.create(title: "Ulysses", author: "Joyce", price: 72)
Book.create(title: "Cosmicomics", author: "Calvino", price: 5)
Book.create(title: "One Hundred Years of Solitude", author: "Marquez", price: 20)
Book.create(title: "Don Quixote", author: "Carvantes", price: 25)
Book.create(title: "Pride and Prejudice", author: "Austen", price: 13)
Book.create(title: "War and Peace", author: "Tolstoy", price: 80)
Book.create(title: "Anna Karenina", author: "Tolstoy", price: 79)
Book.create(title: "Wuthering Heights", author: "Emily Bronte", price: 53)
Book.create(title: "Jane Erye", author: "Charlotte Bronte", price: 81)
Book.create(title: "Catch-22", author: "Heller", price: 18)
Book.create(title: "1984", author: "Orwell", price: 43)

puts "Creating reader..."

Reader.create(name: "Astika", superpower: "Astral Projection", money: 100)
Reader.create(name: "Christian", superpower: "Invisibility", money: 100)
Reader.create(name: "David", superpower: "Super Healing", money: 100)
Reader.create(name: "George", superpower: "Molecular Combustion", money: 100)
Reader.create(name: "Maria", superpower: "Telekinesis", money: 100)
Reader.create(name: "Scout", superpower: "Phasing", money: 100)
Reader.create(name: "Siobhan", superpower: "Trust Fund and Tragic Backstory", money: 100)
Reader.create(name: "Steven", superpower: "Electrocution", money: 100)
Reader.create(name: "Yingyang", superpower: "Pausing Time", money: 100)

puts "Seeding done!"