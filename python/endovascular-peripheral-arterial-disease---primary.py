# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"14NB.00","system":"readv2"},{"code":"662U.00","system":"readv2"},{"code":"9N4h.00","system":"readv2"},{"code":"G73..00","system":"readv2"},{"code":"G73y.00","system":"readv2"},{"code":"G73yz00","system":"readv2"},{"code":"G73z.00","system":"readv2"},{"code":"G73zz00","system":"readv2"},{"code":"Gyu7400","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["endovascular-peripheral-arterial-disease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["endovascular-peripheral-arterial-disease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["endovascular-peripheral-arterial-disease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
