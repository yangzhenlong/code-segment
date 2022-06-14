#!/bin/bash
echo "please input a number list"
# 从控制台读取输入的数组串
read -a arrs
# 循环数组
for((i=0;i<${#arrs[@]};i++)){
  # 双层循环
  for((j=0;j<${#arrs[@]}-1;j++)) {
    # 数组中每个值，和其他值进行比较。如果前面大后面小，调换位置，将大的放后面位置
    if [[ ${arrs[j]} -gt ${arrs[j+1]} ]]; then
      tmp=${arrs[j]}
      arrs[j]=${arrs[j+1]}
      arrs[j+1]=$tmp
    fi
  }
}
echo "sorted result:"
echo ${arrs[@]}
