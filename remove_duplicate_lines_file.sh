#! /bin/bash

read -p "Enter Exact filename here : " filename
read -p "Enter the name of the new file without extension : " new_fn
new_fl=$new_fn
ext=".txt"
new_file=$new_fn$ext
echo "Complete filename is $new_file"
if [ -f "$filename" ];
then
	sort $filename | uniq |tee $new_file
	echo "Duplicates removed and written to file $new_file "
else
	echo "No file found from the name specified"
fi


