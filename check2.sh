#! /bin/bash


for dire in ./test/*
do
#	echo  $dire

  difs="$(java -classpath 'C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\production\ComputingTheory-lab1'  Automat < $dire/test.a | diff $dire/test.b -)"
  #	java -classpath 'C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\production\ComputingTheory-lab1'  Automat < "$dire/test.a" > text.txt

	if [ "$difs" = "" ];
	then
		echo "$dire : [OK]"
	else
		echo "$dire : "
    echo "$difs"
	fi

done



