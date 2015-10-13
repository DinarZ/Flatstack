puts "Starting..."

file = File.open('date.csv')
file.gets

people = []

while (line = file.gets) do
  people << line.split(",")
end

people.sort { |x,y| x[1] <=> y[1] }

puts people

file.close
