## 前提
- Hadoop 集群已启动
- `HADOOP_HOME` 已配置
- 原始文件路径：`/export/server/nba_raw.csv`（32 MB）

## 运行
```bash
wget https://raw.githubusercontent.com/yaroslav-cpu/hadoop-opt-test/main/run-benchmark.sh
chmod +x run-benchmark.sh
./run-benchmark.sh
