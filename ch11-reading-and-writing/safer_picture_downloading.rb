Dir.chdir "/Users/Rylan/Documents/Pictures"
 
pic_names = Dir["Users/Rylan/Documents/Downloads/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:"

pic_number = 1
 
pic_names.each do |name|
    print "."
 
    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end
 
    if File.exist?(new_name)
        puts "Error, filename already exists."
        exit 
    end

    File.rename(name, new_name)
    pic_number += 1
end

if pic_names.length == 0
    puts
    puts "Done!"
end