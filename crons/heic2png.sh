#
#
#
#
#
#
#
#!/bin/bash
input_directory="/Users/eshim/Downloads"
# Create an output directory for the converted PNG files
output_directory="/Users/eshim/screenshots"
# Convert HEIC files to PNG
for file in "$input_directory"/*.HEIC; do
    # Get filename.HEIC
    filename=$(basename "$file")
    # Make Output - Note that % Operator Removes a Pattern from End of String
    output_file="$output_directory/${filename%.*}.png"
    sips -s format png "$file" --out "$output_file"
    # Move Original HEIC File to ~Downloads/heicfiles/
    mv "$input_directory/$filename" "$input_directory/heicfiles/$filename"
done
echo "Conversion complete!"