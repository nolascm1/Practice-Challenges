class Image

    def initialize (array)
        @image = array
    end

        def blur_coords!
        blur_coords = []
        @image.each_with_index do |subarray, i|
            subarray.each_with_index do |x, subarray_i|
                blur_coords << [i, subarray_i] if x == 1
        end
    end
end

    def blur!(blur_distance)
        blur_coords = blur_coords!

        @image.each_with_index do |subarray, i|
            subarray.each_with_index do |x, subarray_i|
                blur_coords.each do |found_i, found_subarray_i|
                    if manhattan_distance(subarray_i, i, found_i, found_subarray_i) <= blur_distance
                        @image[i][subarray_i] = 1
                    end
                end
            end
        end
    end

    def manhattan_distance(x1, y1, x2, y2)
        horizontal_distance = (x2 - x1).abs
        vertical_distance = (y2 - y1).abs
        horizontal_distance + vertical_distance
    end

    
    def output_image 
        @image.each do |subarray|
            puts subarray.join  
        end
    end
end

image = Image.new ([
    [0,0,0,0],
    [0,1,0,0],
    [0,0,0,1],
    [0,0,0,0]
])



image.blur!(2)
image.output_image
