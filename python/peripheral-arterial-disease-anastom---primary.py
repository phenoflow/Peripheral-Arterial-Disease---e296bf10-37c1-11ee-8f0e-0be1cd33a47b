# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"7A40.11","system":"readv2"},{"code":"7A40000","system":"readv2"},{"code":"7A40100","system":"readv2"},{"code":"7A40200","system":"readv2"},{"code":"7A40300","system":"readv2"},{"code":"7A40800","system":"readv2"},{"code":"7A40A00","system":"readv2"},{"code":"7A40D00","system":"readv2"},{"code":"7A41.11","system":"readv2"},{"code":"7A41100","system":"readv2"},{"code":"7A41200","system":"readv2"},{"code":"7A41300","system":"readv2"},{"code":"7A41500","system":"readv2"},{"code":"7A41800","system":"readv2"},{"code":"7A41A00","system":"readv2"},{"code":"7A41D00","system":"readv2"},{"code":"7A45.11","system":"readv2"},{"code":"7A45200","system":"readv2"},{"code":"7A45C00","system":"readv2"},{"code":"7A45D00","system":"readv2"},{"code":"7A46.11","system":"readv2"},{"code":"7A46200","system":"readv2"},{"code":"7A46300","system":"readv2"},{"code":"7A46C00","system":"readv2"},{"code":"7A46D00","system":"readv2"},{"code":"7A47C00","system":"readv2"},{"code":"7A48200","system":"readv2"},{"code":"7A48C00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-arterial-disease-anastom---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-arterial-disease-anastom---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-arterial-disease-anastom---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
