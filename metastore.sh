#!/bin/bash
###
# @文件作者: Elliot.Ma
# @开发日期: 2021-07-02 12:17:26
# @修改时间: 2021-07-02 14:21:37
# @文件描述: 文件描述
###

hadoop fs -mkdir       /tmp
hadoop fs -mkdir -p    /user/hive/warehouse
hadoop fs -chmod g+w   /tmp
hadoop fs -chmod g+w   /user/hive/warehouse

schematool -initSchema -dbType mysql
/opt/hive/bin/hive --service metastore
