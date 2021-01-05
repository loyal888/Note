# 基金和指数信息的获取与分析
import xalpha as xa
import pandas as pd
zzhli = xa.indexinfo('0000922')
zzhli.price[zzhli.price['date']>='2020-04-11']