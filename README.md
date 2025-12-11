# Hadoop Opt Test
教学项目：Hadoop 3.3.4 性能优化脚本  
一键复现 1 GB WordCount

## 一键复现
```bash
git clone https://github.com/你的用户名/hadoop-opt-test.git
cd hadoop-opt-test
# 应用优化配置
cp opt-hdfs.xml   $HADOOP_HOME/etc/hadoop/hdfs-site.xml
cp opt-mapred.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
# 跑分
./run-benchmark.sh
