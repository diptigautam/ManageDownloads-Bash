# Manage your Downloads

## This script should be run on the Downloads directory, and added source to the bash rc file, so that it can be executed from the command line
## without having to run with bash each time.

# What the program should do are the following:
- Arrange the file extensions into folders, such as:
- All files ending with .txt should be transferred into a folder called text_files
- All files ending with .gz should be transferred into a folder called zips
- All files ending with .png/.jpg/.jpeg etc should be transferred into a folder called images
- All files ending with .pdf should be transferred into a folder called pdfs
- All files ending with .svg should be transferred into a folder called vector_images
- All files ending with .docx/.odt etc should be transferred into a folder called docs.
- And so on.


- If one directory already exists with the similar name, the files should just be moved to that.
- If not, one should be created, and the files should be moved inside of it.
- The program should check for the existence of the directory each time it finds a file of the respective extension.

##  I'm sure there could be endless possibilities into it, and more items could be automated, but since this is my only second, and a pretty beginner 
## project in bash, I will limit my scope around this; and maybe, improvise as I go, or reach towards the end.  
