x=1
while [ $x -eq 1 ]	
do

	ch=$(zenity --entry --title="STAFF" --text="1. Search book\n2. Issue book\n3. Return book\n4. Display books\n 5.Exit")       


	if [ $ch -eq 1 ]
	then                                            
		search_query=$(zenity --entry --title="STAFF" --text="Enter book ID/Name")

		echo "------------------  Books --------------------"
		grep  $search_query books.txt
		echo "----------------------------------------------"

	elif [ $ch -eq 2 ]
	then
		python3 issue_data_base_management.py

	elif [ $ch -eq 3 ]
	then
		python3 return_data_base_management.py

	elif [ $ch -eq 4 ]
	then
		zenity --title="DATABASE" --text-info --filename="books.txt"        										   
	elif [ $ch -eq 5 ]
	then
		x=2
		zenity --error --title=" " --text="Exit"
	fi
done
