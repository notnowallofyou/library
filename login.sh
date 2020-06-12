
sos=$(zenity --entry --title="LOGIN" --text="1. Student\n2. Staff")                                         


if [ $sos -eq 1 ]
then
	bash student_home_page.sh
else
                                            
	staff_id=$(zenity --entry --title="STAFF" --text="Enter ID")

	if [ $staff_id -le 100 ] && [ $staff_id -ge 0 ]
	then
		bash staff_home_page.sh
	else
		zenity --error --title="Error" --text="Incorrect Staff ID"
	fi
fi
