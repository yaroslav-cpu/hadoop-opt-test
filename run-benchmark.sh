#!/bin/bash
# Hadoop 3.3.4 WordCount 1 GB 性能测试
hdfs dfs -rm -r -f /output/wc >/dev/null 2>&1
echo ">>> 开始计时 ..."
/usr/bin/time -f "%e" \
  hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.4.jar \
  wordcount /input /output/wc >/dev/null 2>&1
echo ">>> 耗时（秒）：$(tail -n1 ~/after.txt)"
