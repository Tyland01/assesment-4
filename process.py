#this is linking the file containing the data to this file
log_file = open("um-server-01.txt")

#this is where the sales info is pulled
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)
