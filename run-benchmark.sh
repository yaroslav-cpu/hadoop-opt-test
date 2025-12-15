#!/usr/bin/env bash
before=$(/usr/bin/time -f "%e" hadoop jar "$HADOOP_HOME"/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input/nba_1g.csv /output/before 2>&1)
after=$(/usr/bin/time -f "%e"  hadoop jar "$HADOOP_HOME"/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input/nba_1g.csv /output/after  2>&1)
awk "BEGIN{printf \"优化前：${before}s  优化后：${after}s  降幅：%.1f%%\n\",(1-${after}/${before})*100}"
