# 1. 克隆脚本
git clone https://github.com/yaroslav-cpu/hadoop-opt-test.git
cd hadoop-opt-test

# 2. 把优化配置拷进 Hadoop（如想测优化版）
cp opt-hdfs.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml
cp opt-mapred.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
stop-dfs.sh && start-dfs.sh

# 3. 上传数据到 /input/nba/nba_1g.csv
hdfs dfs -put <你的文件> /input/nba/nba_1g.csv

# 4. 跑默认配置
bash run-benchmark.sh default

# 5. 跑优化配置
bash run-benchmark.sh opt
