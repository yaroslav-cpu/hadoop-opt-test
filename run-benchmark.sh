#!/bin/bash
# Hadoop 3.3.4 WordCount 一键跑分脚本
# 用法：bash run-benchmark.sh [opt|default]

MODE=${1:-opt}                 # 缺省进入优化模式
INPUT=/input/nba/nba_1g.csv    # 测试数据路径（与报告一致）
OUTPUT=/output/wc_${MODE}      # 结果目录带模式后缀
JAR=$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.4.jar

# 跑作业 & 计时
/usr/bin/time -f "%e" \
  hadoop jar "$JAR" wordcount "$INPUT" "$OUTPUT" >/dev/null 2>&1
