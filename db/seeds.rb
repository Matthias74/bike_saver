
Repair.destroy_all
User.destroy_all

#client
thomas = User.create!(email: "thomas@user.com", password: "00000000", phone: "0688833732", saver: false)

#saver
john = User.create!(email: "john@saver.com", password: "00000000", saver: true)
michel = User.create!(email: "michel@saver.com", password: "00000000", saver: true)
anna = User.create!(email: "anna@saver.com", password: "00000000", saver: true)

#repairs
repu = Repair.create!(address: "67 Waterloo Avenue, London", category: "flat tyre", client: thomas, saver: john )
oberkampf = Repair.create!(address: "56 Backer Street, London", category: "worn brakes", client: thomas, saver: michel)
wagon = Repair.create!(address: "16 Gaudelet Villa, London", category: "broken chain", client: thomas, saver: anna)
