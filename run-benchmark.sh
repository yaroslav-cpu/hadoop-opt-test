#!/usr/bin/env bash
for i in {1..32}; do cat /export/server/nba_raw.csv; done > /tmp/nba_1g.csv
hdfs dfs -put -f /tmp/nba_1g.csv /input/nba_1g.csv
before=$(/usr/bin/time -f "%e" hadoop jar "$HADOOP_HOME"/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input/nba_1g.csv /output/before 2>&1)
after=$(/usr/bin/time -f "%e" hadoop jar "$HADOOP_HOME"/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input/nba_1g.csv /output/after 2>&1)
awk "BEGIN{printf \"优化前：${before}s  优化后：${after}s  降幅：%.1f%%\\n\",(1-${after}/${before})*100}"
