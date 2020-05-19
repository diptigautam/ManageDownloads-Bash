#!/usr/bin/env bash
# File: manage_downloads.sh

function general {
	if [ -f *$2 ]
	then
		echo "Process staring to move the $2 files"
        	if [ -d "$1" ]
        	then
               		echo "Directory already exists"
        	else
                	echo "Creating directory $1"
                	$(mkdir $1)
                	echo "Directory created."
        	fi
                echo "Moving $2 files to /$1"
                $(mv *$2 $1/)
                echo "Process to move $2 files completed."
	else
		echo "No files of extension $2"
	fi
}



function organize {
	files=$(ls -1Ap | grep -v /)	
       	echo $files
	general "text_files" ".txt"
	general "PDFs" ".pdf"
}

organize
