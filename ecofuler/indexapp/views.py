from django.shortcuts import render,HttpResponse,redirect
from django.http import JsonResponse
from indexapp import models
from indexapp import eco
from django.views.decorators.csrf import csrf_exempt,csrf_protect



import test2
# Create your views here.
def edit(request,a1):
    print(a1)

    return HttpResponse('...')

def test(request):
    # models.UserType.objects.create(title='普通用户')
    # models.UserType.objects.create(title='二逼用户')
    # models.UserType.objects.create(title='牛逼用户')
    # models.UserInfo.objects.create(name='方少伟',age=18,ut_id=1)
    # models.UserInfo.objects.create(name='由秦兵', age=18, ut_id=2)
    # models.UserInfo.objects.create(name='刘庚', age=18, ut_id=2)
    # models.UserInfo.objects.create(name='陈涛', age=18, ut_id=3)
    # models.UserInfo.objects.create(name='王者', age=18, ut_id=3)
    # # models.UserInfo.objects.create(name='杨涵', age=18, ut_id=1)
    # obj = models.UserType.objects.all().first()
    # print(obj.id,obj.title,obj.userinfo_set.all())
    # for row in obj.userinfo_set.all():
    #     print(row.name,row.age)

    # result = models.UserType.objects.all()
    # for obj in result:
    #     print(obj.title,obj.userinfo_set.filter(name='方少伟'))

    # result = models.UserInfo.objects.all().values_list('id','name')
    # for row in result:
    #     print(row)

        #1. 数据获取多个数据时
        # [obj,obj,obj]
        # models.UserInfo.objects.all()
        # models.UserInfo.objects.filter(id_gt=1)


        #2. [{id:1,name:ffd,obj,obj}]
        # models.UserInfo.objects.all().values('id','name')
        # models.UserType.objects.filter(id_gt=1).values('id','name')


        #3. [(1,sasd),obj,obj]
        # models.UserInfo.objects.all().values_list('id','name')
        # models.UserType.objects.filter(id_gt=1).values_list('id','name')
    result = models.UserInfo.objects.all().values('id','name','ut__title')
    for item in result:
        print(item['id'],item['name'],item['ut__title'])


    return HttpResponse('....')

def pagedivide(request):
    """
    分页
    ：param request：
    ：return
    """
    # for i in range(300):
    # name = 'root' + str(i)
    # models.UserInfo.objects.create(name=name,age=18,ut_id=1)
    from django.core.paginator import Paginator,Page,PageNotAnInteger,EmptyPage
    current_page = request.GET.get('page')
    user_list = models.UserInfo.objects.all()
    paginator = Paginator(user_list,10)
    try:
        posts = paginator.page(current_page)
    except PageNotAnInteger as e:
        posts = paginator.page(1)
    except EmptyPage as y:
        posts = paginator.page(1)

    #per_page:每页现实条目数量
    #count:数据总个数
    #num_pages:总页数
    #page_range:总页数的索引数据，如(1,10),(1,200)
    #page: page对象

    #has_next      是否有下一页
    #next_page_number   下一页页码
    #has_previous       是否有上一页
    #previous_page_number   上一页页码
    #object_list       分页之后的数据列表
    #number       当前页
    #paginator     paginator对象
    return render(request, 'pagedivide.html', {'posts':posts})


class pageinfo():
    def __init__(self,current_page,per_page,all_count,show_page=11):
        try:
            self.current_page = int(current_page)
        except Exception as e:
            self.current_page = 1
        self.per_page = per_page
        a,b=divmod(all_count,per_page)
        if b:
            a=a+1
        self.all_page = a
        self.show_page = show_page
    def start(self):
        return (self.current_page-1) * self.per_page

    def end(self):
        return self.current_page * self.per_page

    def pager(self):
        page_list = []
        half = int((self.show_page-1)/2)
        if self.all_page < self.show_page:
            begin = 1
            stop = self.all_page+1
        else:
            if self.current_page <= half:
                begin = 1
                stop = self.show_page + 1
            else:
                if self.current_page+half > self.all_page:
                    stop = self.all_page+1
                    begin = self.all_page - self.show_page
                else:
                    begin = self.current_page - half + 1
                    stop = self.current_page+half+1


        for i in range(begin,stop):
            temp = "<li><a href='/background_index/database_manage/?page=%s'>%s</a></li>"%(i,i)
            page_list.append(temp)
        return ''.join(page_list)


def custom(request):
    #表示用户当前想要访问的页码
    #每页显示数据个数
    all_count = eco.BalanceDataAverage.objects.all().count()
    page_info = pageinfo(request.GET.get('page'),12,all_count)
    user_list = eco.BalanceDataAverage.objects.all()[page_info.start():page_info.end()]
    return render(request,'custom.html',{'user_list':user_list,'page_info':page_info})





def background_index(request):
    return render(request, 'background_index.html')







def database_manage(request):
    all_count = eco.BalanceDataAverage.objects.all().count()+eco.CashDataAverage.objects.count()+eco.ProfitDataAverage.objects.all().count()
    all_count1 = eco.BalanceDataAverage.objects.all().count()
    all_count2 = eco.ProfitDataAverage.objects.all().count()
    all_count3 = eco.CashDataAverage.objects.all().count()
    page_info = pageinfo(request.GET.get("page"),10,all_count)
    page_info1 = pageinfo(request.GET.get("page"),10,all_count1)
    page_info2 = pageinfo(request.GET.get("page"),10,all_count2)
    page_info3 = pageinfo(request.GET.get("page"),10,all_count3)
    user_list = eco.BalanceDataAverage.objects.all()[page_info1.start():page_info1.end()]
    user_list1 = eco.ProfitDataAverage.objects.all()[page_info2.start():page_info2.end()]
    user_list2 = eco.CashDataAverage.objects.all()[page_info3.start():page_info3.end()]
    return render(request,'database_manage.html',{'user_info':user_list,"page_info":page_info,"user_info1":user_list1,"user_list2":user_list2})


def search_info(request):

    import json
    from django.db.models import Q
    comeinfo = str(request.POST.get("searchinfo"))
    get_info = eco.BalanceDataAverage.objects.filter(Q(bs_id__bs_name__contains=comeinfo)|Q(id__contains=comeinfo)|Q(time__contains=comeinfo)|Q(indus_id__indus_name__contains=comeinfo))
    get_info = list(get_info.values('id','time','indus_id__indus_name','bs_id__bs_name',"value"))
    info1 =  eco.ProfitDataAverage.objects.filter(Q(ps_id__ps_name__contains=comeinfo)|Q(id__contains=comeinfo)|Q(time__contains=comeinfo)|Q(indus_id__indus_name__contains=comeinfo))
    info1 = list(info1.values("id","time","indus_id__indus_name","ps_id__ps_name","value"))
    info2 = eco.CashDataAverage.objects.filter(Q(cf_id__cf_name__contains=comeinfo)|Q(id__contains=comeinfo)|Q(time__contains=comeinfo)|Q(indus_id__indus_name__contains=comeinfo))
    info2 = list(info2.values("id","time","indus_id__indus_name","cf_id__cf_name","value"))
    from itertools import chain
    info3 = info2+info1+get_info
    print(info3)
    return HttpResponse(json.dumps(info3))








def initial_analysis2(request):
    return render(request,'初步分析.html')

def result(request):
    import test2
    import Calculation
    industry = request.POST.get("industry")
    detailed_industry = request.POST.get("detailed_industry")
    scale = request.POST.get("scale")
    region = request.POST.get("region")
    indus_dict = {}
    BDA = eco.BalanceDataAverage.objects.all()
    CDA = eco.CashDataAverage.objects.all()
    PDA = eco.ProfitDataAverage.objects.all()
    for i in BDA:
        if i.indus_id.indus_name==detailed_industry:
            indus_dict[i.bs_id.bs_name] = i.value
    for i in CDA:
        if i.indus_id.indus_name==detailed_industry:
            indus_dict[i.cf_id.cf_name] =i.value
    for i in PDA:
        if i.indus_id.indus_name == detailed_industry:
            print(i.id)
            indus_dict[i.ps_id.ps_name] = i.value
    if "投资收益平均值(损失以“-”号记)" in indus_dict:

        indus_dict["投资收益平均值"] = indus_dict.pop("投资收益平均值(损失以“-”号记)")
    user_dict = {}
    datafuzhai = test2.excel_data(request.POST.get('fuzhai'))
    datalilun = test2.excel_data(request.POST.get('lirun'))
    dataliuliang = test2.excel_data(request.POST.get('liuliang'))
    ttl_cur_ass=datafuzhai["流动资产合计期末余额"]  #流动资产合计期末余额（默认）

    ttl_cur_ass_start = datafuzhai["流动资产合计年初余额"] #流动资产合计期初余额
    ttl_cur_liab = datafuzhai["流动负债合计期末余额"] #流动负债合计
    other_rev = datafuzhai["存货期末余额"] #存货期末余额（默认）
    other_rev_start = datafuzhai["存货年初余额"] #存货期初余额
    monetary_fnds = datafuzhai["货币资金期末余额"] #货币资金
    prepayment = datafuzhai["预付款项期末余额"] #预付款项
    LT_amort = datafuzhai["长期待摊费用期末余额"] #待摊费用
    oper_cost = datalilun["减：营业成本本期金额"] #产品销售成本
    account_rev = datafuzhai["应收账款期末余额"] #应收账款期末余额（默认）
    account_rev_start = datafuzhai["应收账款年初余额"] #应收账款期初余额
    ttl_ass = datafuzhai["资产总计期末余额"] #资产总额期末余额（默认）
    ttl_ass_start = datafuzhai["资产总计年初余额"] #资产总额期初余额
    sale_oper = datalilun["一、营业总收入本期金额"]-datalilun["利息收入本期金额"] #销售收入
    ttl_liab = datafuzhai["负债合计期末余额"] #负债总额
    ttl_shareholder = datafuzhai["所有者权益合计期末余额"] #股东权益期末余额（默认）
    ttl_shareholder_start = datafuzhai["所有者权益合计年初余额"] #股东权益期初余额（默认）
    intangi_ass = datafuzhai["无形资产期末余额"] #无形资产净值
    inco_oper_expe = datalilun["三、利润总额本期金额"] #利润总额
    financial_expe = datalilun["财务费用本期金额"] #财务费用
    net_inco = datalilun["四、净利润本期金额"] #净利润
    net_fl_oper = dataliuliang["经营活动产生的现金流量净额本期金额"] #经营活动现金净流量
    non_cur_liab_1year = datafuzhai["一年内到期的非流动性负债期末余额"] #本期到期的债务
    notes_pay = datafuzhai["应付票据期末余额"] #应付票据
    cur_liab = non_cur_liab_1year + notes_pay
    casc_rev_sale = dataliuliang["销售商品、提供劳务收到的现金本期金额"] #销售额
    trea_stk = datafuzhai["减：库存股期末余额"] #普通股股数
    rev_ass = datafuzhai["实收资本期末余额"]
    sale_oper = datalilun["一、营业总收入本期金额"]  # 营业总收入本期金额（默认）
    pay_account = datafuzhai["应付账款期末余额"]
    rev_interest = datalilun["利息收入本期金额"]
    profi_oper = datalilun["二、营业利润本期金额"]
    sale_cost = datalilun["销售费用本期金额"]
    admin_cost = datalilun["管理费用本期金额"]
    jj = datalilun["投资损益本期金额"]
    user_dict["负债合计平均值"] = ttl_liab
    user_dict["资产总计平均值"] = ttl_ass
    user_dict["流动负债合计平均值"] = ttl_cur_liab
    user_dict["应收账款平均值"] = account_rev
    user_dict["所有者权益合计平均值"] = ttl_shareholder
    user_dict["实收资本平均值"] = rev_ass
    user_dict["流动资产合计平均值"] = ttl_cur_ass
    user_dict["应付账款平均值"] = pay_account
    user_dict["存货平均值"] = other_rev
    user_dict["投资收益平均值"] = jj
    user_dict["财务费用平均值"] = financial_expe
    user_dict["主营业务收入平均值"] = sale_oper
    user_dict["利息收入平均值"] = rev_interest
    user_dict["营业利润平均值"] = profi_oper
    user_dict["利润总额平均值"] = inco_oper_expe
    user_dict["主营业务成本平均值"] = oper_cost
    user_dict["销售费用平均值"] = sale_cost
    user_dict["管理费用平均值"] = admin_cost
    print(user_dict)
    datadict = {}
    indexlist = []

    CR, CR_eval = Calculation.CR(ttl_cur_ass, ttl_cur_liab, 1.3)  # 流动比率
    indexlist.append({"name":"流动比率","value":CR,"stad":1.3,"eval":CR_eval})
    QR, QR_eval = Calculation.QR(ttl_cur_ass, other_rev, ttl_cur_liab, 1)  # 速动比率
    indexlist.append({"name": "速动比率", "value": QR, "stad": 1, "eval": QR_eval})
    cQR = Calculation.cQR(ttl_cur_ass, other_rev, prepayment, LT_amort)  # 保守速动比率
    inv_turn_R = Calculation.inv_turn_R(oper_cost, Calculation.zhangkuan(other_rev_start,other_rev), 3)  # 存货周转率
    day_sale_for_inv= Calculation.day_sale_for_inv(inv_turn_R, 120)  # 存货周转天数
    rev_turn_R = Calculation.rev_turn_R(sale_oper, Calculation.zhangkuan(account_rev_start, account_rev),
                                                       3)  # 应收账款周转率
    rev_day = Calculation.rev_day(rev_turn_R, 100)  # 应收账款周转天数
    oper_cycle = Calculation.oper_cycle(rev_day[0], day_sale_for_inv[0], 200)  # 经营周期
    inv_turn_R_, inv_turn_R_eval = inv_turn_R[0], inv_turn_R[1]
    day_sale_for_inv_, day_sale_for_inv_eval = day_sale_for_inv[0], day_sale_for_inv[1]
    rev_turn_R_, rev_turn_R_eval = rev_turn_R[0], rev_turn_R[1]
    rev_day_, rev_day_eval = rev_day[0],rev_day[1]
    oper_cycle_,oper_cycle_eval = oper_cycle[0],oper_cycle[1]
    indexlist.append({"name": "存货周期率", "value": inv_turn_R_, "stad": 3, "eval": inv_turn_R_eval})
    indexlist.append({"name": "存货周转天数", "value": day_sale_for_inv_, "stad": 120, "eval": day_sale_for_inv_eval})
    indexlist.append({"name": "应收账款周转率", "value": rev_turn_R_, "stad": 3, "eval": rev_turn_R_eval})
    indexlist.append({"name": "应收账款周转天数", "value": rev_day_, "stad": 100, "eval": rev_day_eval})
    indexlist.append({"name": "经营周期", "value": oper_cycle_, "stad": 200, "eval": oper_cycle_eval})
    cur_ass_turn, cur_ass_turn_eval = Calculation.cur_ass_turn(sale_oper,
                                                               Calculation.zhangkuan(ttl_cur_ass_start, ttl_cur_ass),
                                                               1)  # 流动资产周转率
    indexlist.append({"name": "流动资产周转率", "value": cur_ass_turn, "stad": 1, "eval": cur_ass_turn_eval})
    ttl_ass_turn, ttl_ass_turn_eval = Calculation.ttl_ass_turn(sale_oper, Calculation.zhangkuan(ttl_ass, ttl_ass_start),
                                                               0.7)  # 总资产周转率
    indexlist.append({"name": "总资产周转率", "value": ttl_ass_turn, "stad": 0.7, "eval": ttl_ass_turn_eval})
    debt_ass_R, debt_ass_R_eval = Calculation.debt_ass_R(ttl_liab, ttl_ass, 0.65)  # 资产负债率
    indexlist.append({"name": "资产负债率", "value": debt_ass_R, "stad": 0.65, "eval": ttl_ass_turn_eval})
    equi_R, equi_R_eval = Calculation.equi_R(ttl_liab, ttl_shareholder, 1.2)  # 产权比率
    indexlist.append({"name": "产权比率", "value": equi_R, "stad": 1.2, "eval": equi_R_eval})
    tangi_net_debt_R, tangi_net_debt_R_eval = Calculation.tangi_net_debt_R(ttl_liab, ttl_shareholder, intangi_ass,
                                                                           1.5)  # 有形净值债务率
    indexlist.append({"name": "有形净值债务率", "value": tangi_net_debt_R, "stad": 1.5, "eval": tangi_net_debt_R_eval})
    intere_earned_R, intere_earned_R_eval = Calculation.intere_earned_R(inco_oper_expe, financial_expe, 2.5)  # 已获利息倍数
    indexlist.append({"name": "已获利息倍数", "value": intere_earned_R, "stad": 2.5, "eval": intere_earned_R_eval})
    net_profi, net_profi_eval = Calculation.net_profi(net_inco, sale_oper, 0.1)  # 销售净利率
    indexlist.append({"name": "销售净利率", "value": net_profi, "stad": 0.1, "eval": net_profi_eval})
    gross_profi, gross_profi_eval = Calculation.gross_profi(sale_oper, oper_cost, 0.15)  # 销售毛利率
    indexlist.append({"name": "销售毛利率", "value": gross_profi, "stad": 0.15, "eval": gross_profi_eval})
    ROA, ROA_eval = Calculation.ROA(net_inco, Calculation.zhangkuan(ttl_ass_start, ttl_ass), 0.4)  # 资产净利率
    indexlist.append({"name": "资产净利率", "value": ROA, "stad": 0.4, "eval": ROA_eval})
    ROE, ROE_eval = Calculation.ROE(net_inco, Calculation.zhangkuan(ttl_shareholder_start, ttl_shareholder),
                                    0.08)  # 净资产收益率
    indexlist.append({"name": "净资产收益率", "value": ROE, "stad": 0.08, "eval": ROE_eval})
    cash_matu_debt_R, cash_matu_debt_R_eval = Calculation.cash_matu_debt_R(net_fl_oper, cur_liab, 1.5)  # 现金到期债务比
    indexlist.append({"name": "现金到期债务比", "value": cash_matu_debt_R, "stad": 1.5, "eval": cash_matu_debt_R_eval})
    ST_cashfl_liab_R, ST_cashfl_liab_R_eval = Calculation.ST_cashfl_liab_R(net_fl_oper, ttl_cur_liab, 0, 5)  # 现金流动负债比
    indexlist.append({"name": "现金流动负债比（前期）", "value": ST_cashfl_liab_R, "stad": 0, "eval": ST_cashfl_liab_R_eval})
    LT_cashfl_liab_R, LT_cashfl_liab_R_eval = Calculation.LT_cash_liab_R(net_fl_oper, ttl_cur_liab, 0.25)
    indexlist.append({"name": "现金流动负债比", "value": LT_cashfl_liab_R, "stad": 0.25, "eval": LT_cashfl_liab_R_eval})
    sale_cash_R, sale_cash_R_eval = Calculation.sale_cash_R(net_fl_oper, casc_rev_sale, 0.2)  # 销售现金比率
    indexlist.append({"name": "销售现金比率", "value": sale_cash_R, "stad": 0.2, "eval": sale_cash_R_eval})
    net_oper_cashfl_share, net_oper_cashfl_share_eval = Calculation.net_oper_cash_share(net_fl_oper, trea_stk,
                                                                                        1)  # 普通股股数
    indexlist.append({"name": "普通股股数", "value": net_oper_cashfl_share, "stad": 1, "eval": net_oper_cashfl_share_eval})
    all_ass_cash_recov_R, all_ass_cash_recov_R_eval = Calculation.all_ass_cash_recov_R(net_fl_oper, ttl_ass,
                                                                                       0.06)  # 全部活动现金净流量
    indexlist.append({"name": "全部活动现金净流量", "value": all_ass_cash_recov_R, "stad": 0.06, "eval": all_ass_cash_recov_R_eval})
    print(indexlist)
    datadict["流动比率"] = CR
    datadict["速动比率"] = QR
    datadict["保守速动比率"] = cQR
    datadict["存货周转率"] = inv_turn_R
    datadict["存货周转天数"] = day_sale_for_inv
    datadict["应收账款周转率"] = rev_turn_R
    datadict["应收账款周转天数"] = rev_day
    datadict["经营周期"] = oper_cycle
    datadict["流动资产周转率"] = cur_ass_turn
    datadict["总资产周转率"] = ttl_ass_turn
    datadict["资产负债率"] = debt_ass_R
    datadict["产权比率"] = equi_R
    datadict["有形净值债务率"] = tangi_net_debt_R
    datadict["已获利息倍数"] = intere_earned_R
    datadict["销售净利率"] = net_profi
    datadict["销售毛利率"] = gross_profi
    datadict["资产净利率"] = ROA
    datadict["净资产收益率"] = ROE
    datadict["现金到期债务比"] = cash_matu_debt_R
    datadict["现金流动债务比"] = ST_cashfl_liab_R
    datadict["现金流动债务比后期"] = LT_cashfl_liab_R
    datadict["销售现金比率"] = sale_cash_R
    datadict["普通股股数"] = net_oper_cashfl_share
    datadict["全部活动现金净流量"] = all_ass_cash_recov_R
    return render(request,"初步分析结果(1).html",{"ind_avg":indus_dict,"user_avg":user_dict,"analysis":indexlist})


def ini_contenterr(request):
    import test2
    import Calculation
    datafuzhai = test2.excel_data(request.POST.get('fuzhai'))
    datalilun = test2.excel_data(request.POST.get('lirun'))
    dataliuliang = test2.excel_data(request.POST.get('liuliang'))
    ttl_cur_ass = datafuzhai["流动资产合计期末余额"]  # 流动资产合计期末余额（默认）
    ttl_cur_ass_start = datafuzhai["流动资产合计年初余额"]  # 流动资产合计期初余额
    ttl_cur_liab = datafuzhai["流动负债合计期末余额"]  # 流动负债合计
    other_rev = datafuzhai["存货期末余额"]  # 存货期末余额（默认）
    other_rev_start = datafuzhai["存货年初余额"]  # 存货期初余额
    monetary_fnds = datafuzhai["货币资金期末余额"]  # 货币资金
    prepayment = datafuzhai["预付款项期末余额"]  # 预付款项
    LT_amort = datafuzhai["长期待摊费用期末余额"]  # 待摊费用
    oper_cost = datalilun["减：营业成本本期金额"]  # 产品销售成本
    account_rev = datafuzhai["应收账款期末余额"]  # 应收账款期末余额（默认）
    account_rev_start = datafuzhai["应收账款年初余额"]  # 应收账款期初余额
    ttl_ass = datafuzhai["资产总计期末余额"]  # 资产总额期末余额（默认）
    ttl_ass_start = datafuzhai["资产总计年初余额"]  # 资产总额期初余额
    sale_oper = datalilun["一、营业总收入本期金额"] - datalilun["利息收入本期金额"]  # 销售收入
    ttl_liab = datafuzhai["负债合计期末余额"]  # 负债总额
    ttl_shareholder = datafuzhai["所有者权益合计期末余额"]  # 股东权益期末余额（默认）
    ttl_shareholder_start = datafuzhai["所有者权益合计年初余额"]  # 股东权益期初余额（默认）
    intangi_ass = datafuzhai["无形资产期末余额"]  # 无形资产净值
    inco_oper_expe = datalilun["三、利润总额本期金额"]  # 利润总额
    financial_expe = datalilun["财务费用本期金额"]  # 财务费用
    net_inco = datalilun["四、净利润本期金额"]  # 净利润
    net_fl_oper = dataliuliang["经营活动产生的现金流量净额本期金额"]  # 经营活动现金净流量
    non_cur_liab_1year = datafuzhai["一年内到期的非流动性负债期末余额"]  # 本期到期的债务
    notes_pay = datafuzhai["应付票据期末余额"]  # 应付票据
    cur_liab = non_cur_liab_1year+notes_pay
    casc_rev_sale = dataliuliang["销售商品、提供劳务收到的现金本期金额"]  # 销售额
    trea_stk = datafuzhai["减：库存股期末余额"]  # 普通股股数
    datadict = {}
    CR = Calculation.CR(ttl_cur_ass, ttl_cur_liab, 1.3)  # 流动比率
    QR = Calculation.QR(ttl_cur_ass, other_rev, ttl_cur_liab, 1)  # 速动比率
    cQR = Calculation.cQR(ttl_cur_ass, other_rev, prepayment, LT_amort)  # 保守速动比率
    inv_turn_R = Calculation.inv_turn_R(oper_cost, Calculation.zhangkuan(other_rev_start,other_rev), 3)  # 存货周转率
    day_sale_for_inv = Calculation.day_sale_for_inv(inv_turn_R, 120)  # 存货周转天数
    rev_turn_R = Calculation.rev_turn_R(sale_oper, Calculation.zhangkuan(account_rev_start, account_rev), 3)  # 应收账款周转率
    rev_day = Calculation.rev_day(rev_turn_R, 100)  # 应收账款周转天数
    oper_cycle = Calculation.oper_cycle(rev_day[0], day_sale_for_inv[0], 200)  # 经营周期
    cur_ass_turn = Calculation.cur_ass_turn(sale_oper, Calculation.zhangkuan(ttl_cur_ass_start, ttl_cur_ass),
                                            1)  # 流动资产周转率
    ttl_ass_turn = Calculation.ttl_ass_turn(sale_oper, Calculation.zhangkuan(ttl_ass, ttl_ass_start), 0.7)  # 总资产周转率
    debt_ass_R = Calculation.debt_ass_R(ttl_liab, ttl_ass, 0.65)  # 资产负债率
    equi_R = Calculation.equi_R(ttl_liab, ttl_shareholder, 1.2)  # 产权比率
    tangi_net_debt_R = Calculation.tangi_net_debt_R(ttl_liab, ttl_shareholder, intangi_ass,1.5)  # 有形净值债务率
    intere_earned_R = Calculation.intere_earned_R(inco_oper_expe, financial_expe, 2.5)  # 已获利息倍数
    net_profi = Calculation.net_profi(net_inco, sale_oper, 0.1)  # 销售净利率
    gross_profi = Calculation.gross_profi(sale_oper, oper_cost, 0.15)  # 销售毛利率
    ROA = Calculation.ROA(net_inco, Calculation.zhangkuan(ttl_ass_start, ttl_ass), 0.4)  # 资产净利率
    ROE = Calculation.ROE(net_inco, Calculation.zhangkuan(ttl_shareholder_start, ttl_shareholder), 0.08)  # 净资产收益率
    cash_matu_debt_R = Calculation.cash_matu_debt_R(net_fl_oper, cur_liab, 1.5)  # 现金到期债务比
    ST_cashfl_liab_R = Calculation.ST_cashfl_liab_R(net_fl_oper, ttl_cur_liab, 0, 5)  # 现金流动负债比
    LT_cashfl_liab_R = Calculation.LT_cash_liab_R(net_fl_oper, ttl_cur_liab, 0.25)
    sale_cash_R = Calculation.sale_cash_R(net_fl_oper, casc_rev_sale, 0.2)  # 销售现金比率
    net_oper_cashfl_share = Calculation.net_oper_cash_share(net_fl_oper, trea_stk, 1)  # 普通股股数
    all_ass_cash_recov_R = Calculation.all_ass_cash_recov_R(net_fl_oper, ttl_ass, 0.06)  # 全部活动现金净流量
    datadict["流动比率"] = CR
    datadict["速动比率"] = QR
    datadict["保守速动比率"] = cQR
    datadict["存货周转率"] = inv_turn_R
    datadict["存货周转天数"] = day_sale_for_inv
    datadict["应收账款周转率"] = rev_turn_R
    datadict["应收账款周转天数"] = rev_day
    datadict["经营周期"] = oper_cycle
    datadict["流动资产周转率"] = cur_ass_turn
    datadict["总资产周转率"] = ttl_ass_turn
    datadict["资产负债率"] = debt_ass_R
    datadict["产权比率"] = equi_R
    datadict["有形净值债务率"] = tangi_net_debt_R
    datadict["已获利息倍数"] = intere_earned_R
    datadict["销售净利率"] = net_profi
    datadict["销售毛利率"] = gross_profi
    datadict["资产净利率"] = ROA
    datadict["净资产收益率"] = ROE
    datadict["现金到期债务比"] = cash_matu_debt_R
    datadict["现金流动债务比"] = ST_cashfl_liab_R
    datadict["现金流动债务比后期"] = LT_cashfl_liab_R
    datadict["销售现金比率"] = sale_cash_R
    datadict["普通股股数"] = net_oper_cashfl_share
    datadict["全部活动现金净流量"] = all_ass_cash_recov_R
    errlist = []
    ret = {"status": False, "msg": None}
    try:
        for point in datadict.items():
            if isinstance(point[1], str):
                errlist.append(point[0])
            else:
                pass

    except Exception as e:
        print(e)
    if errlist:
        divstr = ""
        for item in errlist:
            divstr += item + " "
        ret["status"] = True
        ret["msg"] = divstr
    import json
    return HttpResponse(json.dumps(ret))


def loan_analyse1(request):
    return render(request,"贷款分析1.html")


def loan_analyse2(request):
    return render(request,"贷款分析.html")


def loan_result(request):
    import test2
    import Calculation
    if request.method=="POST":
        datalist_one_year = request.POST.getlist("formdata1")
        datalist_two_year = request.POST.getlist("formdata2")
        datalist_three_year = request.POST.getlist("formdata3")
        datalist = [datalist_one_year,datalist_two_year,datalist_three_year]
        count = 0
        res = 0
        errlist = []

        datadictlist = []
        ttl_shareholder_total = 0
        for form_list in datalist:
            datadict = {}
            count += 1
            datafuzhai,datalirun,dataliuliang = [test2.excel_data(x) for x in form_list]

            ttl_liab = datafuzhai["负债合计期末余额"] #资产负债
            ttl_ass = datafuzhai["资产总计期末余额"] #资产总计
            ttl_cur_ass = datafuzhai["流动资产合计期末余额"]  # 流动资产合计期末余额（默认）
            ttl_cur_liab = datafuzhai["流动负债合计期末余额"]  # 流动负债合计
            monetary_fnds =  datafuzhai["货币资金期末余额"]  #货币资金
            fin_ass_held_for_trd = datafuzhai["交易性金融资产期末余额"]  #交易性金融资产
            net_fl_oper = dataliuliang["经营活动产生的现金流量净额本期金额"]  # 经营活动现金净流量
            net_fl_inve = dataliuliang["投资活动产生的现金流量净额本期金额"] #投资活动现金净流量
            net_fl_fin = dataliuliang["筹资活动产生的现金流量净额本期金额"] #筹资活动现金净流量
            inco_oper_expe = datalirun["三、利润总额本期金额"]  # 利润总额
            sale_oper = datalirun["一、营业总收入本期金额"] #营业总收入本期金额（默认）
            sale_oper_start = datalirun["一、营业总收入上期金额"] #营业总收入上期金额
            net_inco = datalirun["四、净利润本期金额"]  # 本期金额净利润（默认）
            net_inco_start = datalirun["四、净利润上期金额"]  # 上期金额净利润
            ttl_shareholder = datafuzhai["所有者权益合计期末余额"]  # 股东权益期末余额（默认）
            sale_oper_va = datalirun["一、营业总收入本期金额"] - datalirun["利息收入本期金额"]  # 销售收入
            casc_rev_sale = dataliuliang["销售商品、提供劳务收到的现金本期金额"]  # 销售商品、提供劳务收到的现金本期金额
            account_rev = datafuzhai["应收账款期末余额"]  # 应收账款期末余额（默认）
            account_rev_start = datafuzhai["应收账款年初余额"]  # 应收账款期初余额
            oper_cost = datalirun["减：营业成本本期金额"]  # 产品销售成本
            other_rev = datafuzhai["存货期末余额"]  # 存货期末余额（默认）
            other_rev_start = datafuzhai["存货年初余额"]  # 存货期初余额

            datadict["实际到位的注册资本"] = ("",int(request.POST["inlineRadioOptions1"]),"")
            datadict["治理机制"] = ("",int(request.POST["inlineRadioOptions2"]),"")
            datadict["管理水平"] = ("",int(request.POST["inlineRadioOptions3"]),"")
            datadict["领导者素质"] = ("",int(request.POST["inlineRadioOptions4"]),"")
            datadict["市场前景、发展规划和实施条件"] = ("",int(request.POST["inlineRadioOptions5"]),"")
            datadict["财务信息质量指标"] = ("",int(request.POST["RadioOptions6"]),"")
            industry = request.POST.get("industry")
            detailed_industry = request.POST.get("detailed_industry")
            scale = request.POST.get("scale")
            region = request.POST.get("region")

            datadict["资产负债率"] = Calculation.debt_ass_R(ttl_liab,ttl_ass,0.65,1/3) #资产负债率
            datadict["流动比率"] = Calculation.CR(ttl_cur_ass,ttl_cur_liab,1.3,0.125) #流动比率
            datadict["现金比率"] = Calculation.cash_R(monetary_fnds,fin_ass_held_for_trd,ttl_cur_liab,0.14,0.5) #现金比率
            datadict["经营活动现金流负债比"] = Calculation.oper_cash_fl_liab_R(net_fl_oper,ttl_liab,0.06,2/3) #经营活动现金流负债比
            datadict["净现金流量"] = Calculation.net_cash_fl(net_fl_oper,net_fl_inve,net_fl_fin) #净现金流量
            datadict["主营业务利润率"] = Calculation.OPE(inco_oper_expe,sale_oper,0.08,1/1.3) #主营业务利润率
            datadict["资本回报率"] = Calculation.ROC(net_inco,ttl_shareholder,0.06,2/3) #资本回报率
            datadict["销售收入现金含量"] = Calculation.CCOSR(casc_rev_sale,sale_oper_va,0.8,0.1) #销售收入现金流量
            datadict["应收账款周转率"] = Calculation.rev_turn_R(sale_oper,Calculation.zhangkuan(account_rev_start, account_rev),3,1/30) #应收账款周转率
            datadict["存货周转率"] = Calculation.inv_turn_R(oper_cost, Calculation.zhangkuan(other_rev_start, other_rev),3,0.05) #存货周转率
            datadict["主营业务收入增长率"] = Calculation.MBRG(sale_oper,sale_oper_start,0.06,1/3) #主营业务收入增长率
            datadict["利润增长率"] = Calculation.profi_grow(net_inco,net_inco_start,0.02,1/3) #利润增长率
            datadict["主营业务收入"] = Calculation.sale_oper(sale_oper) #主营业务收入
            datadict["净利润"] = Calculation.net_inco(net_inco)  #净利润
            datadictlist.append(datadict)



            try:
                for point in datadict.items():
                    if isinstance(point[1][1],str):
                        errlist.append(point[0]+"%d"%(count))
                    else:
                        res += point[1][1]

            except Exception as e:
                print(e)

            ttl_shareholder_total+=ttl_shareholder
        first_year_dict = datadictlist[0]
        second_year_dict = datadictlist[1]
        third_year_dict = datadictlist[2]
        print(datadictlist)
        S = float("%.2f"%((res/3)*(100/82)))
        print(S)
        cal_eval = Calculation.cal_eval(S)
        print(cal_eval)
        R = cal_eval[0]
        print(R)
        C = ttl_shareholder_total/3
        print(C)
        Q = S*R*C/100
        print(Q)

        return render(request,"贷款分析结果.html",{"first":first_year_dict,"second":second_year_dict,"third":third_year_dict,"score":S,"cal_eval":cal_eval})
    else:
        return redirect("/贷款分析1/贷款分析2/")



def nin(request):
    a = eco.BalanceDataAverage.objects.all()
    b = eco.CashDataAverage.objects.all()
    c = eco.ProfitDataAverage.objects.all()

    for i in a:
        print(type(i.indus_id.indus_name))
    for i in b:
        print(i.indus_id.indus_name)
    for i in c:
        print(i.indus_id.indus_name)

    return render(request,"nin.html")



def ini_errtest(request):
    fuzhai = test2.excel_data(request.POST.get("fuzhai"))
    lirun = test2.excel_data(request.POST.get("lirun"))
    liuliang = test2.excel_data(request.POST.get("liuliang"))
    datalist = [fuzhai,lirun,liuliang]
    import json
    return HttpResponse(json.dumps(datalist))

def loan_errtest(request):
    fuzhai1 = test2.excel_data(request.POST.get("fuzhai1"))
    fuzhai2 = test2.excel_data(request.POST.get("fuzhai2"))
    fuzhai3 = test2.excel_data(request.POST.get("fuzhai3"))
    lirun1 = test2.excel_data(request.POST.get("lirun1"))
    lirun2 = test2.excel_data(request.POST.get("lirun2"))
    print(lirun2)
    liurn3 = test2.excel_data(request.POST.get("lirun3"))
    liuliang1 = test2.excel_data(request.POST.get("liuliang1"))
    liuliang2 = test2.excel_data(request.POST.get("liuliang2"))
    liuliang3 = test2.excel_data(request.POST.get("liuliang3"))
    datalist = [fuzhai1,fuzhai2,fuzhai3,lirun1,lirun2,liurn3,liuliang1,liuliang2,liuliang3]
    import json
    return HttpResponse(json.dumps(datalist))

def loan_errcontent(request):
    import test2
    import Calculation
    fuzhai1 = test2.excel_data(request.POST.get("fuzhai1"))
    fuzhai2 = dict(test2.excel_data(request.POST.get("fuzhai2")))
    fuzhai3 = dict(test2.excel_data(request.POST.get("fuzhai3")))
    lirun1 = dict(test2.excel_data(request.POST.get("lirun1")))
    lirun2 = dict(test2.excel_data(request.POST.get("lirun2")))
    lirun3 = dict(test2.excel_data(request.POST.get("lirun3")))
    liuliang1 = dict(test2.excel_data(request.POST.get("liuliang1")))
    liuliang2 = dict(test2.excel_data(request.POST.get("liuliang2")))
    liuliang3 = dict(test2.excel_data(request.POST.get("liuliang3")))
    datalist = [[fuzhai1, lirun1, liuliang1], [fuzhai2, lirun2, liuliang2], [fuzhai3, lirun3, liuliang3]]
    count = 0
    res = 0
    errlist = []
    datadict = {}
    for form_list in datalist:
        count += 1
        datafuzhai, datalirun, dataliuliang = [x for x in form_list]

        ttl_liab = datafuzhai["负债合计期末余额"]  # 资产负债
        ttl_ass = datafuzhai["资产总计期末余额"]  # 资产总计
        ttl_cur_ass = datafuzhai["流动资产合计期末余额"]  # 流动资产合计期末余额（默认）
        ttl_cur_liab = datafuzhai["流动负债合计期末余额"]  # 流动负债合计
        monetary_fnds = datafuzhai["货币资金期末余额"]  # 货币资金
        fin_ass_held_for_trd = datafuzhai["交易性金融资产期末余额"]  # 交易性金融资产
        net_fl_oper = dataliuliang["经营活动产生的现金流量净额本期金额"]  # 经营活动现金净流量
        net_fl_inve = dataliuliang["投资活动产生的现金流量净额本期金额"]  # 投资活动现金净流量
        net_fl_fin = dataliuliang["筹资活动产生的现金流量净额本期金额"]  # 筹资活动现金净流量
        inco_oper_expe = datalirun["三、利润总额本期金额"]  # 利润总额
        sale_oper = datalirun["一、营业总收入本期金额"]  # 营业总收入本期金额（默认）
        sale_oper_start = datalirun["一、营业总收入上期金额"]  # 营业总收入上期金额
        net_inco = datalirun["四、净利润本期金额"]  # 本期金额净利润（默认）
        net_inco_start = datalirun["四、净利润上期金额"]  # 上期金额净利润
        ttl_shareholder = datafuzhai["所有者权益合计期末余额"]  # 股东权益期末余额（默认）
        sale_oper_va = datalirun["一、营业总收入本期金额"] - datalirun["利息收入本期金额"]  # 销售收入
        casc_rev_sale = dataliuliang["销售商品、提供劳务收到的现金本期金额"]  # 销售商品、提供劳务收到的现金本期金额
        account_rev = datafuzhai["应收账款期末余额"]  # 应收账款期末余额（默认）
        account_rev_start = datafuzhai["应收账款年初余额"]  # 应收账款期初余额
        oper_cost = datalirun["减：营业成本本期金额"]  # 产品销售成本
        other_rev = datafuzhai["存货期末余额"]  # 存货期末余额（默认）
        other_rev_start = datafuzhai["存货年初余额"]  # 存货期初余额
        datadict["资产负债率"] = Calculation.debt_ass_R(ttl_liab, ttl_ass, 0.65, 1 / 3)  # 资产负债率
        datadict["流动比率"] = Calculation.CR(ttl_cur_ass, ttl_cur_liab, 1.3, 0.125)  # 流动比率
        datadict["现金比率"] = Calculation.cash_R(monetary_fnds, fin_ass_held_for_trd, ttl_cur_liab, 0.14, 0.5)  # 现金比率
        datadict["经营活动现金流负债比"] = Calculation.oper_cash_fl_liab_R(net_fl_oper, ttl_liab, 0.06, 2 / 3)  # 经营活动现金流负债比
        datadict["净现金流量"] = Calculation.net_cash_fl(net_fl_oper, net_fl_inve, net_fl_fin)  # 净现金流量
        datadict["主营业务利润率"] = Calculation.OPE(inco_oper_expe, sale_oper, 0.08, 1 / 1.3)  # 主营业务利润率
        datadict["资本回报率"] = Calculation.ROC(net_inco, ttl_shareholder, 0.06, 2 / 3)  # 资本回报率
        datadict["销售收入现金流量"] = Calculation.CCOSR(casc_rev_sale, sale_oper_va, 0.8, 0.1)  # 销售收入现金流量
        datadict["应收账款周转率"] = Calculation.rev_turn_R(sale_oper,
                                                         Calculation.zhangkuan(account_rev_start, account_rev), 3,
                                                         1 / 30)  # 应收账款周转率
        datadict["存货周转率"] = Calculation.inv_turn_R(oper_cost, Calculation.zhangkuan(other_rev_start, other_rev), 3,
                                                       0.05)  # 存货周转率
        datadict["主营业务收入增长率"] = Calculation.MBRG(sale_oper, sale_oper_start, 0.06, 1 / 3)  # 主营业务收入增长率
        datadict["利润增长率"] = Calculation.profi_grow(net_inco, net_inco_start, 0.02, 1 / 3)  # 利润增长率
        datadict["主营业务收入"] = Calculation.sale_oper(sale_oper)  # 主营业务收入
        datadict["净利润"] = Calculation.net_inco(net_inco)  # 净利润
        try:
            for point in datadict.items():
                if isinstance(point[1][1], str):
                    errlist.append(point[0] + "%d" % (count))
                else:
                    res += point[1][1]

        except Exception as e:
            print(e)
    ret = {"status":False,"msg":None}
    if errlist:
        divstr1 = ""
        divstr2 = ""
        divstr3 = ""
        for i in errlist:
            if "1" in i:
                divstr1 += i + " "
            if "2" in i:
                divstr2 += i + " "
            if "3" in i:
                divstr3 += i + " "
        if divstr1 or divstr2 or divstr3:
            divstr = [divstr1.replace("1",""),divstr2.replace("2",""),divstr3.replace("3","")]
            ret["status"] = True
            ret["msg"] = divstr
    import json
    return HttpResponse(json.dumps(ret))



def func_choose(request):
    return render(request,"功能选择.html")



def model_add(request):
    import json
    data1 = request.POST.get("add_data1")
    data2 = request.POST.get("add_data2")
    data3 = request.POST.get("add_data3")
    if data1:
        data1 = eval(data1)
        for record in data1[1:]:
            nid = str(eco.BalanceDataAverage.objects.all().count()+1)
            print(nid)
            indus_name = record[2]
            print(indus_name)
            indus_obj = eco.Industry.objects.filter(indus_name__contains=indus_name)
            if indus_obj:
                indus_id = list(indus_obj.values("indus_id"))[0]["indus_id"]
                indus_id = eco.Industry.objects.get(indus_id=indus_id)

            else:
                add_indus_id = "MA-"+str(eco.Industry.objects.all().count()+1)
                add_indus_name = indus_name
                print(add_indus_name)
                print(add_indus_id)
                eco.Industry.objects.create(indus_id=add_indus_id,indus_name=add_indus_name)
                indus_id = list(eco.Industry.objects.filter(indus_name=indus_name).values("indus_id")[0]["indus_id"])
                print(indus_id)
                indus_id = eco.Industry.objects.get(indus_id=indus_id)
            bs_name = record[5]
            bs_obj = eco.BalanceIndex.objects.filter(bs_name=bs_name)
            bs_id = list(bs_obj.values())[0]["bs_id"]
            bs_id = eco.BalanceIndex.objects.get(bs_id=bs_id)
            eco.BalanceDataAverage.objects.create(id=nid,dimen_id=str(record[0]),time=str(record[1]),indus_id=indus_id,province=record[3],scale=record[4],bs_id=bs_id,unit="1",value=str(record[6]))
    if data2:
        data2=eval(data2)
        print(data2)
        for record in data2[1:]:
            nid = str(eco.ProfitDataAverage.objects.all().count()+1)
            print(nid)
            indus_name = record[2]
            print(indus_name)
            indus_obj = eco.Industry.objects.filter(indus_name__contains=indus_name)
            if indus_obj:
                indus_id = list(indus_obj.values("indus_id"))[0]["indus_id"]
                indus_id = eco.Industry.objects.get(indus_id=indus_id)

            else:
                add_indus_id = "MA-"+str(eco.Industry.objects.all().count()+1)
                add_indus_name = indus_name
                print(add_indus_name)
                print(add_indus_id)
                eco.Industry.objects.create(indus_id=add_indus_id,indus_name=add_indus_name)
                indus_id = list(eco.Industry.objects.filter(indus_name=indus_name).values("indus_id")[0]["indus_id"])
                print(indus_id)
                indus_id = eco.Industry.objects.get(indus_id=indus_id)
            ps_name = record[5]
            ps_obj = eco.ProfitIndex.objects.filter(ps_name=ps_name)
            ps_id = list(ps_obj.values())[0]["ps_id"]
            ps_id = eco.ProfitIndex.objects.get(ps_id=ps_id)
            print(ps_id)
            print(record)
            eco.ProfitDataAverage.objects.create(id=nid,dimen_id=str(record[0]),time=str(record[1]),indus_id=indus_id,scale=record[4],ps_id=ps_id,unit="1",value=str(record[6]))


    if data3:
        data3=eval(data3)
        print(data3)
        for record in data3[1:]:
            nid = str(eco.CashDataAverage.objects.all().count()+1)
            print(nid)
            indus_name = record[2]
            print(indus_name)
            indus_obj = eco.Industry.objects.filter(indus_name__contains=indus_name)
            if indus_obj:
                indus_id = list(indus_obj.values("indus_id"))[0]["indus_id"]
                indus_id = eco.Industry.objects.get(indus_id=indus_id)

            else:
                add_indus_id = "MA-"+str(eco.Industry.objects.all().count()+1)
                add_indus_name = indus_name
                print(add_indus_name)
                print(add_indus_id)
                eco.Industry.objects.create(indus_id=add_indus_id,indus_name=add_indus_name)
                indus_id = list(eco.Industry.objects.filter(indus_name=indus_name).values("indus_id")[0]["indus_id"])
                print(indus_id)
                indus_id = eco.Industry.objects.get(indus_id=indus_id)
            cf_name = record[5]
            cf_obj = eco.CashIndex.objects.filter(cf_name=cf_name)
            cf_id = list(cf_obj.values())[0]["cf_id"]
            cf_id = eco.CashIndex.objects.get(cf_id=cf_id)
            print(cf_id)
            print(record)
            eco.CashDataAverage.objects.create(id=nid,dimen_id=str(record[0]),time=str(record[1]),province=record[2],indus_id=indus_id,scale=record[4],cf_id=cf_id,unit="1",value=str(record[6]))

    return HttpResponse("...")

def contact(request):
    return render(request,"联系我们.html")











