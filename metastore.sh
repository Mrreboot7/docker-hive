#!/bin/bash
###
# @文件作者: Elliot.Ma
# @开发日期: 2021-07-02 12:17:26
# @修改时间: 2021-07-02 12:17:42
# @文件描述: 文件描述
###

schematool -initSchema -dbType mysql && /opt/hive/bin/hive --service metastore
