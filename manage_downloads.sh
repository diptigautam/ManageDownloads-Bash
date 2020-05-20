#!/usr/bin/env bash
# File: manage_downloads.sh

function separate_internal {
	echo "***************************************"
}

function separate_external {
	echo "#######################################"
}

function general {
	count=`ls -1 *$2 2>/dev/null | wc -l`
	if [ $count != 0 ]
	then
		echo "Process staring to move the $2 files"
		separate_internal
        	if [ -d "$1" ]
        	then
               		echo "Directory already exists"
			separate_internal
        	else
                	echo "Creating directory $1"
			separate_internal
                	$(mkdir $1)
			separate_internal
                	echo "Directory created."
			separate_internal
        	fi
                echo "Moving $2 files to /$1"
		separate_internal
                $(mv *$2 $1/)
		separate_internal
                echo "Process to move $2 files completed."
		separate_external
	else
		echo "No files of extension $2"
		separate_external
	fi
}



function organize {
	files=$(ls -1Ap | grep -v /)	
       	echo "Listing all files in the directory..."
	separate_internal
	echo $files
	separate_internal
	general "text_files" ".txt"
	general "PDFs" ".pdf"
	general "zips" ".gz"
	general "images" ".png"
	general "images" ".jpg"
	general "images" ".jpeg"
	general "vector_images" ".svg"
	general "docs" ".odt"
	general "docs" ".docx"
	general "isos" ".iso"
}

organize
