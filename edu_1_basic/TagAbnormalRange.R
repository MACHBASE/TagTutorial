library("RODBC")

channel <- odbcConnect("MACHBASE_DSN", believeNRows=FALSE, case="toupper");

# Raw Data
res <- sqlQuery(channel, "select to_char(time, 'YYYY-MM-DD HH24:MI:SS,mmm'), value from tag where name = 'MTAG_C00' and value > 3200 limit 10000");
plot(res)

# Minutes Rollup 
res <- sqlQuery(channel, "SELECT TO_CHAR(DATE_TRUNC('minute', TIME, 1), 'YYYY-MM-DD HH24:MI:SS') as date, avg(VALUE) as value FROM (SELECT /*+ ROLLUP(TAG, min, avg) */ TIME, VALUE FROM TAG WHERE NAME = 'MTAG_C00') GROUP BY date ORDER BY 1 ");
plot(res)

# Second Rollup 
res <- sqlQuery(channel, "select time, value from (SELECT /*+ ROLLUP(TAG, min, avg) */ TO_CHAR(TIME, 'YYYY-MM-DD HH24:MI:SS') as time , VALUE FROM TAG WHERE NAME = 'MTAG_C00' ORDER BY 1) where value > 3200");
plot(res)

# Raw Data Abnormal Find 
res <- sqlQuery(channel, "SELECT  /*+ ROLLUP(TAG, sec, avg) */ to_char(TIME, 'HH24:MI:SS'), VALUE FROM TAG WHERE NAME = 'MTAG_C00' AND TIME >= TO_DATE('2009-01-28 10:43:00') AND TIME < TO_DATE('2009-01-28 10:47:00') order by time")
plot(res)

odbcClose(channel)
