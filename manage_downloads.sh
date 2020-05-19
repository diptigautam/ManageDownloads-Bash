#!/usr/bin/env bash
# File: manage_downloads.sh

function organize {
	files=$(ls -1Ap | grep -v /)	
       	echo $files
	echo "Process staring to move the .txt files"
	if [ -d "text_files" ]
	then
		echo "Directory already exists"
		echo "Moving .txt files to /text_files"
		$(mv *.txt text_files/)
		echo "Process to move .txt files completed."
	else
		echo "Creating directory text_files"
		$(mkdir text_files)
		echo "Directory created"
		echo "Moving .txt files to /text_files"
		$(mv *.txt text_files/)
		echo "Process to move .txt files completed."
	fi
}

organize
