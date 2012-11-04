puts "Please enter the root path for you app. Or you can just run this from the root of your app and hit enter like I do."
root_dir = gets
puts "Your chosen directory: #{root_dir} "
missing_images = Array.new
images = Dir.glob("*.png")
images.each do |image_name|
	tmp = image_name.split(".", 2)
	two_x_image_name = tmp[0] + "@2x.png"
	if images.include?(two_x_image_name)
	else
		missing_images << image_name
	end
	puts image_name
	File.open(image_name, "r") do |f|
	end	
end

missing_images.each do |image_name|
	puts "#{image_name} does not appear to have an @2x version."
end

