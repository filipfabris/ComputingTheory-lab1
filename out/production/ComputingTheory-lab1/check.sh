#! /bin/bash


for dire in ./test/*
do
#	echo  $dire
  java -classpath 'C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\produc  tion\ComputingTheory-lab1' Automat < "$dire/test.a" >/dev/null 2>&1


  var="$(diff output.txt  "$dire/test.b" )"

	if [ "$var" = "" ];
	then
		echo "$dire : [OK]"
	else
		echo "$dire : "
		echo $var
	fi

done


