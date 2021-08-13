# Opening file "um-server-01.txt" and setting its contents into log_file
log_file = open("um-server-01.txt")

# Creating function sales_reports that takes the variable log_file that holds
# our files data 
def sales_reports(log_file):
    # For loop that loops over each line in the file ('um-server-01.txt')
    for line in log_file:
        # gets rid of the trailing characters in this space its white space.
        line = line.rstrip()
        # sets variable day to the line of slice start at character 0 end at 
        # character 3
        day = line[0:3]
        # if the first 3 characters == "mon" then do some functionality
        if day == "Mon":
            # prints the line.
            print(line)

# calling the function with our argument(log_file)
sales_reports(log_file)
