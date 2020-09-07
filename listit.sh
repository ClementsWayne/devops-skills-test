#!/bin/bash
Create a file called directories.list that contains the directory names only of the current directory.
Add a line at the beginning of the directories.list file that reads "line one's line".
Output the first three lines of directories.list on the console.
Accept an integer parameter when executed and repeat the previous question's output x amount of times based on the parameter provided at execution.

working_dir=`pwd`
echo "$pwd" > directories.list
sed -i "1i\
line one's line"  directories.list
head -3 directories.list

read -p "Enter number of Excecutions: " num
 for i in {1..$num}
 do 
 working_dir=`pwd`
echo "$pwd" > directories.list
sed -i "1i\
line one's line"  directories.list
head -3 directories.list
done

