echo "Changing to home directory"
cd ~
echo "Changing to DotFiles directory"
cd dot_files

DotFiles=(vimrc emacs bash_profile)
for DotFile in ${DotFiles[@]}
do
	echo $DotFile
	cp ~/.$DotFile ~/backup/.$DotFile
	mv ~/.$DotFile ~/old_dotfiles/
	ln -s ~/dot_files/$DotFile ~/.$DotFile

done
