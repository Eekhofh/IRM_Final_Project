# IRM_Final_Project
Introduction to Research Methods - Final Project - Hessel Eekhof - s3398641

THIS REPOSITORY 

This repository contains two bash scripts (collect_tweets.sh and final_project.sh), 
a Python program (count_occurrences.py) and this file (README.md).

The purpose of these files is to answer the following research question: 
What is the relation between province (Friesland or Noord-Holland) and the usage 
of vowels with an accent circumflex on Twitter?


DATA

The data that was used to answer this question originates from the RUG's 'Karora' corpus. This corpus
contains a large amount of tweets from 2010 to 2021. This research focuses on tweets from February 2021. 
More information on this can be found in final_project.pdf.


PYTHON PROGRAM 

The Python program count_occurrences.py counts the amount of tweets which contain a vowel with an accent
circumflex. It also keeps track of the amount of tweets which do not contain one of these characters. 
Its usage and the way it works can be found in the comments of count_occurrences.py. 


BASH SCRIPTS 

The bash script collect_tweets.sh collects and pre-processes the tweets necessary for the research. 
Its usage and the way it works can be found in the comments of collect_tweets.sh.

The bash script final_project.sh ties together collect_tweets.sh and count_occurrences.py. 
It allows the user to run both these programs with only 1 command. 

NOTE: When it is the user's first time running these programs, final_project.sh is the easiest since
it runs all necessary programs to get the proper results. When the user has already run final_project.sh 
at some point, it is faster to only run count_occurrences.py. This is because it is unnecessarily 
time-consuming to gather and pre-process all the tweets again, when there exist already two text files 
containing them. 


RESULTS 

When final_project.sh is run (or count_occurrences.py only depending on whether final_project.sh has already been run at 
some point), the following numbers should fill the contingency matrix: 

86, 2

3451, 2929

	
TERMINAL

For this research, use was made of the Ubuntu terminal. All programs were run within the Karora corpus.


VERSIONING 

Ubuntu 16.04.7 LTS

Python 2.7.12

Bash 4.3.48(1)-release (x86_64-pc-linux-gnu)
