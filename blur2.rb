class Image
    def initialize (pixels)
        @pixels = pixels
    end
    
    def output_image 
        @pixels.each do |subarray|
            puts subarray.join(' ')    
        end
    end
    
    def blur
        @pixels.each do |subarray|
            p subarray
            subarray.each_with_index do |number, hindex|
              if number == 1
                puts "found it => #{hindex}"
              end
            end
            
        end
    end
end

image = Image.new ([
    [0,0,0,0],
    [0,1,0,0],
    [0,0,0,1],
    [0,0,0,0]
])



image.output_image
image.blur
