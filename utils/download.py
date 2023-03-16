import urllib.request


# download xls file.
url_xls = ""
filename_xls = "file.xls"

# download csv file.
url_csv = ""
filename_csv = "file.csv"

# download xlsx file.
url_xlsx = ""
filename_xlsx = "file.xlsx"



def main():
    # TODO: 
    # 1. check the file is existed or not.
    # 2. put files into a folder path what we want.

    if url_xls is not '':
        urllib.request.urlretrieve(url_xls, filename_xls)

    if url_csv is not '':
        urllib.request.urlretrieve(url_csv, filename_csv)

    if url_xlsx is not '':
        urllib.request.urlretrieve(url_xlsx, filename_xlsx)