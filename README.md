## 前提
- 已启动 Hadoop 集群（3 节点即可）
- `/input/nba_1g.csv` 已存在（任意 1 GB 文本）
- `HADOOP_HOME` 已配置
  
## 使用
```bash
wget https://raw.githubusercontent.com/yaroslav-cpu/hadoop-opt-test/main/run-benchmark.sh
chmod +x run-benchmark.sh
./run-benchmark.sh
