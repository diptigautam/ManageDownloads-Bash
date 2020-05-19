#!/usr/bin/env bash
# File: manage_downloads.sh

function text_files {
	echo "Process staring to move the .txt files"
        if [ -d "text_files" ]
        then
                echo "Directory already exists"
        else
                echo "Creating directory text_files"
                $(mkdir text_files)
                echo "Directory created."
	fi
                echo "Moving .txt files to /text_files"
                $(mv *.txt text_files/)
                echo "Process to move .txt files completed."
}

function organize {
	files=$(ls -1Ap | grep -v /)	
       	echo $files
	text_files
}

organize
