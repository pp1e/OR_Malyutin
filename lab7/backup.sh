source_dir=$1
target_dir=$2
echo $target_dir

for file in $source_dir/*; do
	mv "$file" "$target_dir/$(date +"%Y-%m-%d")-$(basename $file)"
done

