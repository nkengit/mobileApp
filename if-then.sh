if (condition); then 
	action if condition is true
fi

if (condition1); then 
	action if condition is true
elif (condition2); then 
	action if condition2 is true
else
	action if condition1 is false
	action if condition2 is false
fi
fi

		status=$? # exit status of last command
        echo $? = 0    ==> success
        echo $? = 1    ==> failure #review below

		echo $? = 0    ==> Uversal correctness
		echo $? = 1    ==> permission denied
		echo $? = 127  ==> command not found
		echo $? = 130  ==> process terminated with Crtl C 