#! /bin/bash


for dire in ./test/*
do
	echo  $dire

  difs="$(java -classpath 'C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\production\ComputingTheory-lab1'  Automat < $dire/test.a | diff $dire/test.b -)"
	java -classpath 'C:\Users\filip\IdeaProjects\ComputingTheory-lab1\out\production\ComputingTheory-lab1'  Automat < "$dire/test.a" > text.txt

   var="$(diff text.txt  "$dire/test.b" )"
   varDRUGI="$(diff output.txt  "$dire/test.b" )"
   varTRECI="$(diff output.txt  text.txt )"


	if [ "$varDRUGI" = "" ];
	then
		echo "$dire : [OK]"
	else
		echo "$dire : "
    echo "$varDRUGI"
	fi

done



