# Manage your Downloads

### This script was originally intended to be run on the Downloads directory, to manage the directory as it becomes more cluttered once you start downloading  alot of files and programs, hence the name, but it can be used in any directory of your choice that needs decluttering. Just make sure to follow the steps mentioned below! 

* Download the script, and move to a directory of your choice in your PC.

* Open the terminal and from there, open `.bash_profile` file with `nano`. 
	`nano ~/.bash_profile`

* Scroll to the end of the file, and type the following:
	`source ~/<path_to_your_file>/manage_downloads.sh`

For example, if you stored it in your `home/user` directory, it would be: 
	`source ~/manage_downloads.sh` 

* Save and exit properly. (To exit `nano`, type `Ctrl+O`, hit `Enter`, and then `Ctrl+X`. If you are on `vim`, hit `Esc`, then `:wq`)

* Now go ahead and source your `bash_profile` file: 
	`source ~/.bash_profile

* There you have it! Your script is now ready to be run as a normal command line function! Now just navigate to the directory of your choice, and type the following on your terminal as you would do with any other command!
	`manage_downloads`



### Closing Remarks 

* Now this script, does not detect the files, it just has a function to do the sorting, and traps the different file types with the folder names during the function call. 

* If you have a clutter of file types that's not mentioned before, just add a new line and specify those filetypes and you'll be done! 

* Don't forget to source it again after you make any changes. 

* And send me a PR if you find a better way to do it, or if you think I'm missing something useful.;)

### Happy Decluttering! 
