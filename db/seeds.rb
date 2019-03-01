# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gift.all.each do |gift|
  gift.destroy
end

Guest.all.each do |guest|
  guest.destroy
end

# ActiveRecord::Base.connection.tables.each do |t|
#   ActiveRecord::Base.connection.reset_pk_sequence!(t)
# end

Gift.create(name: 'Pañales Pampers desechables (RN)')
Gift.create(name: 'Pañales Pampers desechables (RN)')
Gift.create(name: 'Pañales Pampers desechables (RN+)')
Gift.create(name: 'Pañales Pampers desechables (RN+)')
Gift.create(name: 'Pañales Pampers desechables (RN+)')
Gift.create(name: 'Pañales Pampers desechables (RN+)')
Gift.create(name: 'Pañales Pampers desechables (P)')
Gift.create(name: 'Pañales Pampers desechables (P)')
Gift.create(name: 'Pañales Pampers desechables (P)')
Gift.create(name: 'Pañales Pampers desechables (P)')
Gift.create(name: 'Pañales Pampers desechables (P)')
Gift.create(name: 'Pañales Pampers desechables (M)')
Gift.create(name: 'Pañales Pampers desechables (M)')
Gift.create(name: 'Pañales Pampers desechables (M)')
Gift.create(name: 'Pañales Pampers desechables (M)')
Gift.create(name: 'Pañales Pampers desechables (M)')
Gift.create(name: 'Pañales Pampers desechables (G)')
Gift.create(name: 'Pañales Pampers desechables (G)')
Gift.create(name: 'Pañales Pampers desechables (G)')
Gift.create(name: 'Pañales Pampers desechables (G)')
Gift.create(name: 'Pañales Pampers desechables (G)')
Gift.create(name: 'Toallitas húmedas Pampers')
Gift.create(name: 'Toallitas húmedas Pampers')
Gift.create(name: 'Toallitas húmedas Pampers')
Gift.create(name: 'Toallitas húmedas Pampers')
Gift.create(name: 'Toallitas húmedas Pampers')
Gift.create(name: 'Cepillo para cabello bebé')
Gift.create(name: 'Corta uñas bebé')
Gift.create(name: 'Emulsionado bebé')
Gift.create(name: 'Talco bebé')
Gift.create(name: 'Shampoo bebé')
Gift.create(name: 'Mordedor')
Gift.create(name: 'Termómetro bebé')
Gift.create(name: 'Mamadera de vidrio 60ml flujo inicial')
Gift.create(name: 'Mamadera de vidrio 125ml flujo lento')
Gift.create(name: 'Mamadera de vidrio o polipropileno, entre 150ml y 260ml flujo medio')
Gift.create(name: 'Mamadera de vidrio o polipropileno, más de 260ml flujo rápido')
Gift.create(name: 'Baberos o bandanas')
Gift.create(name: 'Baberos o bandanas')
Gift.create(name: 'Baberos o bandanas')
Gift.create(name: 'Silla alta para comer')
Gift.create(name: 'Moisés')
Gift.create(name: 'Cuna')
Gift.create(name: 'Monitor bebé')
Gift.create(name: 'Porta-bebé para mamá')
