#! /bin/bash


for dire in ./test/*
do
#	echo  $dire
  java -classpath "C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\production\ComputingTheory-lab1" Automat < "$dire/test.a"


  var="$(diff output.txt  "$dire/test.b" )"

	if [ "$difs" = "" ];
	then
		echo "$dire : [OK]"
	else

		echo "$dire : "
		echo $difs
	fi

done


