import os
import csv

udemy_csv = os.path.join(r"C:\Users\tommy\Documents\GWU-ARL-DATA-PT-09-2019-U-C\02-Homework\03-Python\Instructions\Part-1\HW_Task2_UdemyZip\web_starter.csv")

title = []
price = []
subscribers = []
reviews = []
length = []

with open(udemy_csv, encoding = 'utf-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    
    # loop through
    for row in csvreader:
        
        title.append(row[1])
        price.append(row[4])
        subscribers.append(row[5])
        reviews.append(row[6])
        length.append(row[9])

zipped_data = zip(title, price, subscribers, reviews, length) 

output_file = os.path.join("dart_web_final.csv")

with open(output_file, "w", newline='') as datafile:
        writer = csv.writer(datafile)
        
        writer.writerow(["Title","Price","Subscribers","Reviews","Length"])
        writer.writerows(zipped_data)