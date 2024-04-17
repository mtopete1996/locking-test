puts 'Creating seats'

seats = %w[A1 B1 C1 A2 B2 C2 A3 B3 C3]

seats.each do |seat|
  Seat.create(name: seat)
end
