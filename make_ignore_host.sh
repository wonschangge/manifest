#!/bin/bash
# 初始化一个空字符串，用于存储拼接后的内容
result=""
# 逐行读取文件A.txt中的内容
while read line; do
    # 去除每行开头和结尾的空白字符（空格、制表符、换行等）
    line=$(echo $line | sed 's/^[[:space:]]*//g' | sed 's/[[:space:]]*$//g')
    # 判断该行既不以#开头，也不是空白行（经过上述处理后长度不为0）
    if [[ ! $line =~ ^# ]] && [[ -n $line ]]; then
        # 如果result为空，直接赋值当前行
        if [ -z "$result" ]; then
            result=$line
        # 如果result不为空，用逗号连接当前行
        else
            result="$result,$line"
        fi
    fi
done < ignore_host.list
# 输出拼接后的结果
echo -n $result > ignore_host.txt
