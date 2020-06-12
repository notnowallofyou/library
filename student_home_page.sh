
stud_id=$(zenity --entry --title="STUDENT" --text="Enter ID")                                            


ch=$(zenity --entry --title="STUDENT" --text="1. Search book\n2. Check current issued books")

if [ $ch -eq 1 ]
then                                           
	search_query=$(zenity --entry --title="STUDENT" --text="Enter book ID/Name")

	echo "                                             "
	echo " *****************  Books *******************"
	grep  $search_query books.txt
	echo "                                             "
elif [ $ch -eq 2 ]
then
	echo "                                             "
	grep  $stud_id books.txt
	echo "                                             "
fi
