
Repair.destroy_all
User.destroy_all

#client
thomas = User.create!(firstname: "Thomas", email: "thomas@user.com", password: "00000000", phone: "0688833732", saver: false)

#saver
john = User.create!(firstname: "John", email: "john@saver.com", password: "00000000", saver: true)
michel = User.create!(firstname: "Michel", email: "michel@saver.com", password: "00000000", saver: true)
anna = User.create!(firstname: "Anna", email: "anna@saver.com", password: "00000000", saver: true)

#repairs
repu = Repair.create!(address: "67 Waterloo Avenue, London", category: "flat tyre", client: thomas, saver: john )
oberkampf = Repair.create!(address: "56 Backer Street, London", category: "worn brakes", client: thomas, saver: michel)
wagon = Repair.create!(address: "16 Gaudelet Villa, London", category: "broken chain", client: thomas, saver: anna)
megeve = Repair.create!(address: "32 route de la cote 2000, Megeve", category: "broken chain", client: thomas)
cannes = Repair.create!(address: "29 avenue MAurice Derché, Cannes", category: "broken chain", client: thomas)
