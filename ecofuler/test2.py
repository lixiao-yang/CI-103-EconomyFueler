import xlrd
import re
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
                del_info = re.findall(r'（.*）', str(cell_value))
                if del_info:
                    del_info = del_info[0]
                    cell_value = cell_value.replace(del_info, '')
                excel_list.append(cell_value)
                try:
                    cell_value = int(cell_value)
                    balance = cell_value
                    for second_col in range(ncols):
                        value = table.cell(2,second_col).value.strip().replace('\n','').replace('\r','')
                        if col == second_col:
                            excel_dict[dict_key+value] = balance
                except:
                    if not cell_value:
                        raise Exception
                    for second_col in range(ncols):
                        value = table.cell(2,second_col).value.strip().replace('\n','').replace('\r','')
                        if '额' not in value and col==second_col:
                            dict_key = cell_value.strip().replace('\n', '').replace('\r', '')
                        elif '额' in value and col==second_col:
                            raise Exception

        return excel_dict
    except Exception as e:
        return '该格式不合法'


def judge_order(get_file,content):
    if content not in get_file:
        return "格式错误"
    else:
        return get_file

def judge_func(var):
    if var=="格式错误":
        return "格式错误"
    else:
        pass




