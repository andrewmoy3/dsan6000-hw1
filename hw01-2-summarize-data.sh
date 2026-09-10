output="wikimedia_data_summary.csv"
echo "filename,size,num_lines" > "$output"

for filepath in data/*.csv; do
    fname=$(basename "$filepath")               
    size=$(ls -lh "$filepath" | awk '{print $5}')    
    lines=$(wc -l < "$filepath")                
    echo "$fname,$size,$lines" >> "$output"
done
