# consider hard coding IDs if you think you might replant at some point

puts "Creating publishers..."
Publisher.create(name: "Harper Collins", founding_year: 1998)
Publisher.create(name: "Simon and Schuster", founding_year: 2004)
Publisher.create(name: "Macmillan", founding_year: 1956)
Publisher.create(name: "Hachette", founding_year: 1995)
Publisher.create(name: "Penguin Random House", founding_year: 1995)

puts "Creating books..."
Book.create(title: "Ulysses", author: "Joyce")
Book.create(title: "Cosmicomics", author: "Calvino")
Book.create(title: "One Hundred Years of Solitude", author: "Marquez")
Book.create(title: "Don Quixote", author: "Carvantes")
Book.create(title: "Pride and Prejudice", author: "Austen")
Book.create(title: "War and Peace", author: "Tolstoy")
Book.create(title: "Anna Karenina", author: "Tolstoy")
Book.create(title: "Wuthering Heights", author: "Emily Bronte")
Book.create(title: "Jane Erye", author: "Charlotte Bronte")
Book.create(title: "Catch-22", author: "Heller")
Book.create(title: "1984", author: "Orwell")

puts "Creating reader..."

Reader.create(name: "Astika", superpower: "Astral Projection")
Reader.create(name: "Christian", superpower: "Invisibility")
Reader.create(name: "David", superpower: "Super Healing")
Reader.create(name: "George", superpower: "Molecular Combustion")
Reader.create(name: "Maria", superpower: "Telekinesis")
Reader.create(name: "Scout", superpower: "Phasing")
Reader.create(name: "Siobhan", superpower: "Trust Fund and Tragic Backstory")
Reader.create(name: "Steven", superpower: "Electrocution")
Reader.create(name: "Yingyang", superpower: "Pausing Time")

puts "Seeding done!"