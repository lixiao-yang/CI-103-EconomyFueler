def range_function(result):
    if result > 5 or result < 0:
        return "超出范围值"
    else:
        return float("%.2f" % (result))


def percentage_range_function(result):
    if result > 1 or result < 0:
        return "超出范围值"
    else:
        return float("%.2f" % (result))


def day_range_function(result):
    if result > 365 or result < 0:
        return "超出范围值"
    else:
        return result


def zhangkuan(start_money, end_money):
    return (start_money + end_money) / 2

def ini_judge_index(index,stad,text_info_up,text_info_down):
    if isinstance(index,float) or isinstance(index,int):
        index = float("%.2f"%(index))
        if index >= stad:
            return index,text_info_up
        else:
            return index,text_info_down
    else:
        return index

def mark_get_down(base_num, stad, rate, ful_point,text_info_up="",text_info_down=""):
    if stad and rate and (isinstance(base_num, float) or isinstance(base_num, int)):
        if base_num <= stad:
            mark = ful_point
        elif base_num > stad:
            mark = ful_point - rate * (base_num - stad) * 100
        evaluate = ini_judge_index(base_num,stad,text_info_up,text_info_down)[1]
        return float("%.2f"%(base_num)),float("%.2f" % (mark)),evaluate
    else:
        return ini_judge_index(base_num,stad,text_info_up,text_info_down)


def mark_get_up(base_num, stad, rate, ful_point,text_info_up="",text_info_down=""):
    if stad and rate and (isinstance(base_num, float) or isinstance(base_num, int)):
        if base_num >= stad:
            mark = ful_point
        elif base_num < stad:
            mark = ful_point - rate * (stad - base_num) * 100
            if mark<0:
                mark=0
        evaluate = ini_judge_index(base_num, stad, text_info_up, text_info_down)[1]
        return float("%.2f"%(base_num)),float("%.2f" % (mark)),evaluate
    else:
        return ini_judge_index(base_num,stad,text_info_up,text_info_down)



def oper_cycle_test(a,b):
    try:
        c = a+b
        return c
    except Exception as e:
        return "超出范围值"


def cal_eval(S):
    R = 0.3
    level = "无评价"
    short_eval = "无"
    long_eval = "无"
    if S>=90:
        R=3.0
    else:
        if S>=50:
            R = 3.0-(90-S)*0.025
        elif S>=14:
            R = 3.0-(90-S)*0.05
        else:
            R=0.03
    if R==3.0:
        level = "AAA"
        short_eval = "信用极好"
        long_eval = "企业的信用程度高、债务风险小。该类企业具有优秀的信用记录，经营状况佳，盈利能力强，发展前景广阔，不确定性因素对其经营与发展的影响极小。"
    elif R>=2.8:
        level = "AA"
        short_eval = "信用优良"
        long_eval = "企业的信用程度较高，债务风险较小。该类企业具有优良的信用记录，经营状况较好，盈利水平较高，发展前景较为广阔，不确定性因素对其经营与发展的影响很小。"
    elif R>=2.6:
        level = "A"
        short_eval = "信用较好"
        long_eval = "企业的信用程度良好，在正常情况下偿还债务没有问题。该类企业具有良好的信用记录，经营处于良性循环状态，但是可能存在一些影响其未来经营与发展的不确定因素，进而削弱其盈利能力和偿还能力"
    elif R>=2.5:
        level = "BBB"
        short_eval = "信用一般"
        long_eval = "企业的信用程度一般，偿还债务的能力一般。该类企业的信用记录正常，但其经营状况、盈利水平及未来发展易受不确定因素的影响，偿债能力有波动。"
    elif R>=2.3:
        level = "BB"
        short_eval = "信用欠佳"
        long_eval = "企业信用程度较差，偿还能力不足。该类企业有较多不良信用记录，未来前景不明朗，含有投机性因素"
    elif R>=2.1:
        level = "B"
        short_eval = "信用较差"
        long_eval = "企业的信用程度差，偿债能力较弱。"
    elif R>=2.0:
        level = "CCC"
        short_eval = "信用很差"
        long_eval = "企业信用很差，几乎没有偿债能力。"
    elif R>=1.8:
        level = "CC"
        short_eval = "信用极差"
        long_eval = "企业信用极差，没有偿债能力。"
    elif R>=1.5:
        level = "C"
        short_eval = "没有信用"
        long_eval = "企业无信用。"
    elif R>1.0:
        level = "D"
        short_eval = "没有信用"
        long_eval = "企业已濒临破产。"

    return float("%.2f"%(R)),level,short_eval,long_eval


# ==============================   流动比率  ====================================

# 计算公式:流动资产合计/流动负债合计
# 标准值：1.3
# 范围：0 ～ 5
def CR(total_current_assets, total_current_liabilities, stad=0.0, rate=0.0):
    flow_rate_value = total_current_assets / total_current_liabilities

    return mark_get_up(flow_rate_value, stad, rate, 8,"比率越高，说明企业资产的变现能力越强，短期偿债能力亦越强","低于正常值，企业的短期偿债风险较大")


# ===============================   end   ======================================
print(CR(49,49,1.3,0.125))

# ==============================   速动比率  ====================================

# 速动比率计算公式:(流动资产合计 - 存货)/流动负债合计
# 标准值:1
# 范围：0 ～ 5
def QR(total_current_assets, stock, total_current_liabilities,stad):
    quick_moving_radio_value = range_function((total_current_assets - stock) / total_current_liabilities)
    quick_moving_radio_value = range_function(quick_moving_radio_value)
    return ini_judge_index(quick_moving_radio_value,stad,"速动比率大于1说明:企业在速动资产上占用资金过多,会增加企业投资的机会成本。","低于1的速动比率通常被认爲是短期偿债能力偏低")


# 保守速动比率计算公式:(流动资产+存货+预付账款+待摊费用)/流动资产
# 标准值:1.25
# 范围：0 ～ 5
def cQR(monetary_fund, short_term_invest, bill_recieve, net_receive):
    conserve_quick_moving_radio_value = (
            (monetary_fund + short_term_invest + bill_recieve + net_receive) / monetary_fund)
    return range_function(conserve_quick_moving_radio_value)


# ===================================   end   ======================================

# ==============================   存货周期率  ====================================

# 计算公式:产品销售成本/[(期初存货+期末存货)/2]
# 标准值:3
# 范围：0 ～ 5
def inv_turn_R(cost_of_product, zhangkuan,stad=0,rate=0):
    inventory_turnover_value = cost_of_product / (zhangkuan / 2)
    return mark_get_up(inventory_turnover_value,stad,rate,6,"","存货的占用水平越低，流动性越强，存货转换爲现金或应收账款的速度越快")


# ===============================================================================

# ==============================   存货周转天数  ====================================


# 使用方法:必须先计算出存货周转率，后再计算该值
# 计算公式:360 / 存货周转率
# 标准值:120
# 范围：0 ～ 365
def day_sale_for_inv(inventory_turnover_value,stad):
    try:
        inventory_turnover_value = float(inventory_turnover_value[0])
        inventory_day_value = 360 / inventory_turnover_value
        res = int(inventory_day_value)
        return ini_judge_index(res,stad,"存货占用水平越高，经营管理水平越高。","存货周转天数越少,表明存货周转次数越多,平均存货越少")
    except:
        return "超过范围"


# ================================================================================

# ==============================   应收账款周转率  ====================================

# 计算公式: 销售收入 ÷ [（期初应收账款 + 期末应收账款） ÷ 2]
# 标准值:3
# 范围：0 ～ 5
def rev_turn_R(proceeds_of_sale, zhangkuan_value,stad=0,rate=0):
    turnover_of_account_receive_value = proceeds_of_sale / zhangkuan_value
    return mark_get_up(turnover_of_account_receive_value,stad,rate,6,"应收账款周转率越高，说明其收回越快。","营运资金过多呆滞在应收账款上，影响正常资金周转及偿债能力。")


# =================================   end   =========================================

# ==============================   应收账款周转天数  ==================================

# 使用方法:必须先计算出应收账款周转率
# 计算公式:360/应收账款周转率
# 标准值:100
# 范围：0 ～ 365
def rev_day(turnover_of_account_receive_value,stad):
    try:
        turnover_of_account_receive_value = float(turnover_of_account_receive_value[0])
        turnover_account_day_value = 360 / turnover_of_account_receive_value
        day = int(day_range_function(turnover_account_day_value))
        return ini_judge_index(day,stad,"","营运资金过多呆滞在应收账款上，影响正常资金周转及偿债能力。")
    except:
        return "超过范围"


# =================================   end   ==========================================

# ==============================   经营周期  ========================================

# 使用该公式必须先计算存货周转天数和应收款周转天数
# 公式:存货周转天数+资金周转天数
# # 标准值:200
# 范围：0 ～ 365
def oper_cycle(inventory_day_value, turnover_account_day_value,stad):
    try:
        int(inventory_day_value)
        int(turnover_account_day_value)
        operating_cycle_value = inventory_day_value + turnover_account_day_value
        return ini_judge_index(operating_cycle_value,stad,"经营周期短，说明资金周转速度快","营运资金过多呆滞在应收账款上，影响正常资金周转及偿债能力。")
    except:
        return "超过范围"


# ==================================   end   ========================================

# ==============================   流动资产周转率  ========================================

# 计算公式:销售收入 ÷ [（期初流动资产 + 期末流动资产） ÷ 2]
# 这里的zhangkuan函数变量放的分别是是期初资产总额和期末资产总额
# 标准值:1
# 范围：0 ～ 5
def cur_ass_turn(proceeds_of_sale, zhangkuan,stad):
    total_asset_turnover_value = proceeds_of_sale / zhangkuan
    total_asset_turnover_value = range_function(total_asset_turnover_value)
    return ini_judge_index(total_asset_turnover_value,stad,"","延缓周转速度，需补充流动资产叁加周转，形成资产的浪费，降低企业的盈利能力。")


# ==================================   end   ========================================

# ==============================   总资产周转率  ========================================

# 计算公式: 销售收入 ÷ [（期初资产总额 + 期末资产总额） ÷ 2]
# 这里的zhangkuan函数变量放的分别是期初流动资产和期末流动资产总额
# 标准值:0.8
# 范围：0 ～ 5
def ttl_ass_turn(proceeds_of_sale, zhangkuan,stad):
    current_asset_turnover_value = proceeds_of_sale / zhangkuan
    current_asset_turnover_value =  range_function(current_asset_turnover_value)
    return ini_judge_index(current_asset_turnover_value,stad,"达到85％及以上时，应视爲发出预警信号，企业应提起足够的注意。","总资产周转率越低,净资产收益率也越低。")


# ==================================   end   ========================================


# ==============================  资产负债率   ========================================

# 计算公式:负债总额 / 资产总额
# 标准值:0.65
# 范围：0 ～ 1
def debt_ass_R(total_liabilities, total_assets, stad=0, rate=0):
    debt_value = percentage_range_function(total_liabilities / total_assets)
    return mark_get_down(debt_value, stad, rate, 10,"负债比率越大，企业面临的财务风险越大，获取利润的能力也越强。","一方面,说明企业资金充足,不需要借债经营; 另一方面,说明企业举债经营能力不足。")


# ==================================   end   ========================================

# ==============================   产权比率  ========================================

# 计算公式:负债总额 / 股东权益 * 100%
# 标准值:1.2
# 范围：0 ～ 1
def equi_R(total_liabilities, stockholders_equity,stad):
    equity_radio_value = total_liabilities / stockholders_equity
    equity_radio_value = range_function(equity_radio_value)
    return ini_judge_index(equity_radio_value,stad,"产权比率高是高风险、高报酬的财务结构","产权比率低，是低风险、低报酬的财务结构")


# ==================================   end   ========================================


# ==============================   有形净值债务率  ========================================

# 计算公式:负债总额/(股东权益-无形资产净值)
# 标准值:1.5
# 范围：0 ～ 5
def tangi_net_debt_R(total_liabilities, stockholders_equity, immaterial_assets_net,stad):
    debt_to_tangible_assets_radio_value = total_liabilities / (stockholders_equity - immaterial_assets_net)
    debt_to_tangible_assets_radio_value = range_function(debt_to_tangible_assets_radio_value)
    return ini_judge_index(debt_to_tangible_assets_radio_value,stad,"较高的比率说明企业风险较大","较低的比率说明企业有良好的偿债能力，举债规模正常。")

# ==================================   end   ========================================


# ==============================   已获利息倍数   ========================================

# 计算公式:(利润总额 + 财务费用)/(财务费用中的利息支出 + 资本化利息)
# 标准值:2.5
# 范围：0 ～ 5
def intere_earned_R(total_profit, financial_expense,stad):
    interest_converage_value = (total_profit + financial_expense) / financial_expense
    interest_converage_value = range_function(interest_converage_value)
    return ini_judge_index(interest_converage_value,stad,"该指标越高，说明企业的债务利息压力越小。","已获利息倍数越低，企业长期偿债能力越低。")


# ==================================   end   ========================================

# ==============================   销售净利率   ========================================

# 计算公式:净利润/销售收入
# 标准值:0.1
# 范围：0 ～ 1
def net_profi(net_profit, proceeds_of_sales,stad):
    profit_margin_value = net_profit / proceeds_of_sales
    profit_margin_value = percentage_range_function(profit_margin_value)
    return ini_judge_index(profit_margin_value,stad,"必须要相应获取更多的净利润才能使销售净利率保持不变或有所提高","销售净利率下降说明企业销售的盈利能力降低")


# ==================================   end   ========================================

# ==============================   销售毛利率   ========================================

# (销售收入-销售成本)/销售收入
# 标准值:0.15
# 范围：0 ～ 1
def gross_profi(proceeds_of_sales, cost_of_product,stad):
    gross_profit_margin_value = (proceeds_of_sales - cost_of_product) / proceeds_of_sales
    gross_profit_margin_value = percentage_range_function(gross_profit_margin_value)
    return  ini_judge_index(gross_profit_margin_value,stad,"销售毛利率高就表示企业生产或者采购成本低，产品的附加值高，产品可能比较先进，市场需求量高。表示缴纳的增值税也高。","销售毛利率比较低或降低, 说明公司的成本费用支出较高或上升, ")


# ==================================   end   ========================================

# ==============================   资产净利率   ========================================

# 计算公式:净利润/(期初资产总额+期末资产总额)/2
# 这里zhangkuan函数放的变量分别是期初资产总额和期末资产总额
# 标准值:无标准
# 范围：0 ～ 1
def ROA(net_profit, zhangkuan,stad):
    net_return_assets_value = net_profit / zhangkuan
    net_return_assets_value = percentage_range_function(net_return_assets_value)
    return ini_judge_index(net_return_assets_value,stad,"资产净利率低说明投资大,见效慢,资产利用率低,存在资产闲置问题。","指标越高，表明资产的利用效率越高，说明企业在增加收入和节约资金等方面取得了良好的效果")


# ==================================   end   ========================================

# ==============================   净资产收益率  ========================================

# 计算公式:净利润/(期初所有者权益合计 + 期末所有者权益合计)/2
# 这里zhangkuan函数放的变量分别是期初所有权益合计和期末所有者合计
# 标准值:0.08
# 范围：0 ～ 1
def ROE(net_profit, zhangkuan,stad):
    roe_value = net_profit / zhangkuan
    roe_value = percentage_range_function(roe_value)
    return ini_judge_index(roe_value,stad,"资产收益率越低的资产,其面临的风险就越小。","资产收益率某种资产的收益率越高,则面临的风险越大")

# ==================================   end   ========================================

# ==============================   现金到期债务比   ========================================

# 计算公式:经营活动现金净流量/本期到期的债务
# 标准值:1.5
# 范围：0 ～ 5
def cash_matu_debt_R(ncfo, current_debt,stad):
    cash_maturity_debt_ratio_value = ncfo / current_debt
    return ini_judge_index(cash_maturity_debt_ratio_value,stad,"表明企业的短期偿债能力越好。","表示企业短期偿债能力差。")


# ==================================   end   ========================================


# ==============================   现金流动负债比   ========================================

# 计算公式:年经营活动现金净流量/期末流动负债
# 标准值:0.5
# 范围：0 ～ 5
def ST_cashfl_liab_R(year_operating_cash_net_flow, end_flow_debt, stad=0, rate=0):
    cash_flow_debt_radio_value = range_function(year_operating_cash_net_flow / end_flow_debt)
    return mark_get_up(cash_flow_debt_radio_value, stad, rate, 4,"比率越高，企业承担债务的能力越强。","现金流动负债比率小于1说明企业的经营净现金流入量并不足以支付当前的流动负债，也就是说企业对于负债的偿还，并不能完全依靠经营活动产生的现金流量，还需要部分依靠企业自有资金的周转，这对于企业的经营会造成不利的影响，而且还会增加企业的短期资金风险，并对企业的长期发展也有一些负面影响。")


# ==================================   end   ========================================

# ==============================   现金流动负债比(后期)   ========================================

# 计算公式:年经营活动现金净流量/期末流动负债
# 标准值:0.25
# 范围：0 ～ 5
def LT_cash_liab_R(operating_cash_net_flow, total_end_flow_debt,stad):
    end_cash_flow_debt_radio_value = operating_cash_net_flow / total_end_flow_debt
    end_cash_flow_debt_radio_value = range_function(end_cash_flow_debt_radio_value)
    return ini_judge_index(end_cash_flow_debt_radio_value,stad,"这个比率越高，企业承担债务的能力越强。","")


# ==================================   end   ========================================

# ==============================   销售现金比率   ========================================

# 计算公式:经营活动现金净流量/销售额
# 标准值:0.2
# 范围:0 ～ 5
def sale_cash_R(ncfo, sale_volume,stad):
    cash_sale_radio_value = ncfo / sale_volume
    cash_sale_radio_value = range_function(cash_sale_radio_value)
    return ini_judge_index(cash_sale_radio_value,stad,"这个比率越高，企业的收入质量越好，资金利用效果越好。","表示公司短期偿债能力越差。")


# ==================================   end   ========================================

# ==============================   每股营业现金流量  ========================================

# 计算公式:经营活动现金净流量/销售额
# 标准值:无标准
# 范围：无标准值
def net_oper_cash_share(ncfo, common_share_num,stad):
    operating_cash_flow_per_share_value = ncfo / common_share_num
    return ini_judge_index(operating_cash_flow_per_share_value,stad,"超过此限，就要借款分红。","每股现金流量为负的时候意味着公司发生了大量的应收款项、公司支付困难,要靠举债或扩股维持支付或者企业只有现金投入,没有资金回笼")


# ==================================   end   ========================================

# ==============================   全部资产现金回收率  ========================================

# 计算公式:经营活动现金净流量/期末资产总额
# 标准值:0.06
# 范围：0 ～ 5
def all_ass_cash_recov_R(ncfo, end_total_assets,stad):
    cash_recovery_rate_of_all_assets_value = ncfo / end_total_assets
    cash_recovery_rate_of_all_assets_value =  range_function(cash_recovery_rate_of_all_assets_value)
    return ini_judge_index(cash_recovery_rate_of_all_assets_value,stad,"值越大说明资产利用效果越好，利用资产创造的现金流入越多，整个企业获取现金能力越强，经营管理水平越高。","经营管理水平越低，经营者有待提高管理水平，进而提高企业的经济效益。")

# ==================================   end   ========================================

# ==============================   现金满足投资比率  ========================================

# 计算公式:近五年累计经营活动现金净流量/同期内的资本支出、存货增加、现金股利之和
# 标准值:0.8
# 范围：0 ～ 5
def cash_flow_adequancy_radio(five_year_ncfo, csc_a,stad):
    cash_flow_adequancy_radio_value = five_year_ncfo / csc_a
    cash_flow_adequancy_radio_value = range_function(cash_flow_adequancy_radio_value)
    return ini_judge_index(cash_flow_adequancy_radio_value,stad,"比率越大，资金自给率越高。","若小於1，则说明企业部分资金要靠外部融资来补充。")

# ==================================   end   ========================================

# ==============================   现金股利保障倍数  ========================================

# 计算公式:经营活动现金净流量/现金股利
# 标准值:2
# 范围：0 ～ 5
def cash_divident_cover(ncfo, cash_dividend,stad):
    cash_divident_cover_value = ncfo / cash_dividend
    cash_divident_cover_value = range_function(cash_divident_cover_value)
    return ini_judge_index(cash_divident_cover_value,stad,"该比率越大，说明支付现金股利的能力越强，其值越大越好。","若该比率小于1，说明企业来自经营活动的现金不足以供应目前营运规模和支付现金股利的需要，不足的部分需要靠外部筹资补充。")


# ==================================   end   ========================================

# ==============================   现金比率  ========================================

# 计算公式:(货币资金+交易性金融资产)/流动负债
# 标准值:0.14
# 范围：0 ～ 1
def cash_R(monetary_fnds, fin_ass_held_for_trd, ttl_cur_liab, stad=0, rate=0):
    cash_R_value = percentage_range_function((monetary_fnds + fin_ass_held_for_trd) / ttl_cur_liab)
    return mark_get_up(cash_R_value, stad, rate, 6,"比率过高，就意味着企业流动负债未能得到合理运用，而现金类资产获利能力低，这类资产金额太高会导致企业机会成本增加","表示企业可用于偿付流动负债的现金数额越多，现金比率可变现损失的风险越小，而且变现的时间也越短")


# ==================================   end   ========================================

# ==============================   经营活动现金流负债比  ========================================

# 计算公式:经营活动净现金流/负债总额
# 标准值:0.06
# 范围：0 ～ 1
def oper_cash_fl_liab_R(nocf, ttl_liab, stad=0, rate=0):
    cash_R_value = percentage_range_function(nocf/ttl_liab)
    return mark_get_up(cash_R_value, stad, rate, 4," 这一比率越高，企业承担债务的能力越强，破产的可能性越小。","这一比率越低，企业财务灵活性越差，破产的可能性越大")


# ==================================   end   ========================================

# ==============================   净现金流量  ========================================

# 计算公式:经营活动产生的现金流量净额 + 投资活动产生的现金流量净额 + 筹资活动产生的现金流量净额
# 标准值:0
# 范围：无范围
def net_cash_fl(net_fl_oper, net_fl_inve, net_fl_fin):
    net_cash_fl_value = net_fl_fin + net_fl_inve + net_fl_oper
    if net_cash_fl_value > 0:
        mark = 2
        evaluate = "高：经营效益、财产状况好。过高：可能是资金闲置，将影响企业资金能力的发挥"
    else:
        mark = 0
        evaluate = "低：企业在扩大生长规模,进行巨额投资。或企业为了降低负债规模,大额偿还银行借款。"
    return "净现金流量",mark,evaluate


# ==================================   end   ========================================

# ==============================   主营业务利润率  ========================================

# 计算公式:营业利润/营业总收入
# 标准值:0.08
# 范围：0 ～ 1
def OPE(sale_oper,oper_inco,stad=0,rate=0):
    OPE_value = percentage_range_function(sale_oper/oper_inco)
    return mark_get_up(OPE_value,stad,rate,6,"责任越高、需要交纳更高的印花税等,特别是在认定了注册资本后如果无法完成补缴的,还需要追究相关法律责任","注册资本低的劣势是不容易获得商业伙伴信任及从事业务会受到限制。一个公司的注册资金在一定程度上代表其实力和信誉，如果注册资本过低，很多业务无法参加。")


# ==================================   end   ========================================

# ==============================   资本回报率  ========================================

# 计算公式:净利润/所有者权益
# 标准值:0.06
# 范围：0 ～ 1
def ROC(net_inco,ttl_sharehold,stad=0,rate=0):
    ROC_value = range_function(net_inco/ttl_sharehold)
    return mark_get_up(ROC_value,stad,rate,4,"公司治理机制不完善,将极大地制约企业进一步发展壮大,甚至导致破产","")


# ==================================   end   ========================================

# ==============================   销售收入现金含量   ========================================

# 计算公式:销售商品或提供劳务收到的现金/销售收入
# 标准值:0.80
# 范围：0 ～ 1
def CCOSR(casc_rev_sale,sale_oper,stad=0,rate=0):
    CCOSR_value = casc_rev_sale/sale_oper
    return mark_get_up(CCOSR_value,stad,rate,6,"企业的收入质量越好","企业的收入质量越差，也可能会有虚假收入")


# ==================================   end   ========================================


# ==============================   主营业务增长率   ========================================

# 计算公式:(本期主营业务收入-上期主营业务收入)/上期主营业务收入
# 标准值:0.06
# 范围：0 ～ 1
def MBRG(sale_oper_C,sale_oper_B,stad=0,rate=0):
    MBRG_value = percentage_range_function((sale_oper_C-sale_oper_B)/sale_oper_B)
    return mark_get_up(MBRG_value,stad,rate,2,"如果主营业务收入增长率超过10%，说明公司产品处于成长期，将继续保持较好的增长势头，","如果该比率低于5%，说明公司产品已进入衰退期，保持市场份额已经很困难，主营业务利润开始滑坡，如果没有已开发好的新产品，将步入衰落。")


# ==================================   end   ========================================


# ==============================   利润增长率   ========================================

# 计算公式:(本期实现净利润-上期实现净利润)/上期实现净利润
# 标准值:0.06
# 范围：0 ～ 1
def profi_grow(net_inco_C,net_inco_B,stad=0.0,rate=0.0):
    profi_grow_value = (net_inco_C-net_inco_B)/net_inco_B
    return mark_get_up(profi_grow_value,stad,rate,2,"越高，说明企业百元商品销售额提供的营业利润越多，企业的盈利能力越强；","")


# ==================================   end   ========================================


# ==============================   主营业务收入   ========================================

# 计算公式:营业总收入
# 标准值:1.4亿
# 范围：无

def sale_oper(sale_oper_C,stad=1400000000,rate=1/3500000000):
    return mark_get_up(sale_oper_C,stad,rate,4,"企业其他业务收入增加，主营业务收入下降，说明企业主营业务所面临的内外部环境不够好，而其他的副业在增加，企业可以考虑转型，但也有可能这个其他业务收入是房屋出租收入，若是这块收入增加而主营业务收入萎缩，企业长期发展是不容乐观的。如若是企业营业外收入增加，这个营业外收入是变卖固定资产的收入，企业长期发展也是不容乐观的。","主营业务收入占绝对比重,且呈逐年上升趋势,说明企业发展比较健康")


# ==================================   end   ========================================


# ==============================   净利润   ========================================

# 计算公式:净利润
# 标准值:400万
# 范围：无

def net_inco(net_inco_C,stad=4000000,rate=1/200000000):
    return mark_get_up(net_inco_C,stad,rate,2,"净利润高说明该公司的经营效益较好,经营能力较强","净利润较低是说明该公司的经营效益较差,经营能力较弱。")


# ==================================   end   ========================================




