import xlrd
def excel_data(file):
    try:
        data = xlrd.open_workbook(file)
        table = data.sheet_by_index(0)
        nrows = table.nrows
        ncols = table.ncols
        excel_list = []
        excel_dict = {}
        for row in range(3, nrows):
            for col in range(ncols):
                cell_value = table.cell(row, col).value
                excel_list.append(cell_value)
                try:
                    int(cell_value)
                    balance = cell_value
                    if col == 2 or col == 5:
                        excel_dict[dict_key+'期末余额'] = balance
                    else:
                        excel_dict[dict_key+'年初余额'] = balance
                except:
                    dict_key = cell_value


        return excel_dict
    except Exception as e:
        print(str(e))


if __name__ == "__main__":
    list = excel_data('sdsd.xls')
    print(list)
