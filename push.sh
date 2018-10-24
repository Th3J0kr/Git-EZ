#!/bin/bash

echo "[*] Let's send some shit to git..."
echo "[*] What directory do you want to push?"
read -p "> " dirName

if [ -d $dirName ];then
	
	cd $dirName

	echo "[*] Great, what do you want the commit message to be?"
	read -p "> " commitMsg
	

	echo "[*] Okay, what branch?"
	read -p "> " branch

	echo "[*] Ready, pushing $dirName to branch $branch with message $commitMsg"

	git add .; git commit -m "$commitMsg"; git push origin $branch
	
	
else
	echo "[!] That isn't a valid directory!"
fi
