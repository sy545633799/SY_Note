# -*- coding: UTF-8 -*-

import time  # 引入time模块
import calendar
 
ticks = time.time()
print "current timestamp:", ticks

# 序号	属性	值
# 0	tm_year	2008
# 1	tm_mon	1 到 12
# 2	tm_mday	1 到 31
# 3	tm_hour	0 到 23
# 4	tm_min	0 到 59
# 5	tm_sec	0 到 61 (60或61 是闰秒)
# 6	tm_wday	0到6 (0是周一)
# 7	tm_yday	1 到 366(儒略历)
# 8	tm_isdst	-1, 0, 1, -1是决定是否为夏令时的旗帜
print time.localtime()

#内置格式化时间
print "current time:", time.asctime(time.localtime(time.time()))

# 格式化成2016-03-20 11:45:39形式
print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) 
 
# 格式化成Sat Mar 28 22:24:24 2016形式
print time.strftime("%a %b %d %H:%M:%S %Y", time.localtime()) 
  
# 将格式字符串转换为时间戳
a = "Sat Mar 28 22:24:24 2016"
print time.mktime(time.strptime(a,"%a %b %d %H:%M:%S %Y"))

# Time 模块
# Time 模块包含了以下内置函数，既有时间处理的，也有转换时间格式的：
# 序号	函数及描述
# 1	time.altzone
# 返回格林威治西部的夏令时地区的偏移秒数。如果该地区在格林威治东部会返回负值（如西欧，包括英国）。对夏令时启用地区才能使用。
# 2	time.asctime([tupletime])
# 接受时间元组并返回一个可读的形式为"Tue Dec 11 18:07:14 2008"（2008年12月11日 周二18时07分14秒）的24个字符的字符串。
# 3	time.clock( )
# 用以浮点数计算的秒数返回当前的CPU时间。用来衡量不同程序的耗时，比time.time()更有用。
# 4	time.ctime([secs])
# 作用相当于asctime(localtime(secs))，未给参数相当于asctime()
# 5	time.gmtime([secs])
# 接收时间戳（1970纪元后经过的浮点秒数）并返回格林威治天文时间下的时间元组t。注：t.tm_isdst始终为0
# 6	time.localtime([secs])
# 接收时间戳（1970纪元后经过的浮点秒数）并返回当地时间下的时间元组t（t.tm_isdst可取0或1，取决于当地当时是不是夏令时）。
# 7	time.mktime(tupletime)
# 接受时间元组并返回时间戳（1970纪元后经过的浮点秒数）。
# 8	time.sleep(secs)
# 推迟调用线程的运行，secs指秒数。
# 9	time.strftime(fmt[,tupletime])
# 接收以时间元组，并返回以可读字符串表示的当地时间，格式由fmt决定。
# 10	time.strptime(str,fmt='%a %b %d %H:%M:%S %Y')
# 根据fmt的格式把一个时间字符串解析为时间元组。
# 11	time.time( )
# 返回当前时间的时间戳（1970纪元后经过的浮点秒数）。
# 12	time.tzset()
# 根据环境变量TZ重新初始化时间相关设置。

print("-------------------------------------calendar----------------------------------------------")
print calendar.month(2016, 1)
# 1	calendar.calendar(year,w=2,l=1,c=6)
# 返回一个多行字符串格式的year年年历，3个月一行，间隔距离为c。 每日宽度间隔为w字符。每行长度为21* W+18+2* C。l是每星期行数。
# 2	calendar.firstweekday( )
# 返回当前每周起始日期的设置。默认情况下，首次载入caendar模块时返回0，即星期一。
# 3	calendar.isleap(year)
# 是闰年返回True，否则为false。
# 4	calendar.leapdays(y1,y2)
# 返回在Y1，Y2两年之间的闰年总数。
# 5	calendar.month(year,month,w=2,l=1)
# 返回一个多行字符串格式的year年month月日历，两行标题，一周一行。每日宽度间隔为w字符。每行的长度为7* w+6。l是每星期的行数。
# 6	calendar.monthcalendar(year,month)
# 返回一个整数的单层嵌套列表。每个子列表装载代表一个星期的整数。Year年month月外的日期都设为0;范围内的日子都由该月第几日表示，从1开始。
# 7	calendar.monthrange(year,month)
# 返回两个整数。第一个是该月的星期几的日期码，第二个是该月的日期码。日从0（星期一）到6（星期日）;月从1到12。
# 8	calendar.prcal(year,w=2,l=1,c=6)
# 相当于 print calendar.calendar(year,w,l,c).
# 9	calendar.prmonth(year,month,w=2,l=1)
# 相当于 print calendar.calendar（year，w，l，c）。
# 10	calendar.setfirstweekday(weekday)
# 设置每周的起始日期码。0（星期一）到6（星期日）。
# 11	calendar.timegm(tupletime)
# 和time.gmtime相反：接受一个时间元组形式，返回该时刻的时间戳（1970纪元后经过的浮点秒数）。
# 12	calendar.weekday(year,month,day)
# 返回给定日期的日期码。0（星期一）到6（星期日）。月份为 1（一月） 到 12（12月）。