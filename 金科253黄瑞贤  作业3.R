library(stringr)
#基本的数据结构是向量
#函数是c()
numx<-c(1,1.1,2)#数值型
intx<-c(1L,2L,3L)#整数型
charx<-c("苹果","香蕉","123")#字符型
boolx <- c(TRUE, FALSE)#逻辑性
compx<-c(1+2i,2+3i,3+4i)#复数型
#使用typeof()查看数据类型
typeof(numx)
typeof(intx)
typeof(charx)
typeof(boolx)
typeof(compx)
#可以在变量后加上[]并加上序号选择其中元素
numx[1]
intx[2]
charx[3]
boolx[1:2]
compx[c(1,3)]
#可以使用list包含任何其他类型的数据结构，用list()构建
onelist<-list(
  numx,
  intx,
  charx,
  boolx,
  compx
)
print(onelist)
#有三种提取其中元素的方法
#1单括号[]返回子列表,可取多个
onelist[1]
onelist[c(1,3)]
#2双括号[[]]返回元素本身,单个
onelist[[1]]
#美元符号$，仅按名称提取单个元素
onelist$charx
#进⾏常规的数据统计分析可以使用data.frame
#1.与向量的联系：数据框的每一列本质上是一个向量，
#因此每一列内部的元素必须是同一类型
#2.在R中数据框是一个特殊的列表，
#其每个列表元素都是一个长度相同的向量
oneframe<-data.frame(
  name=c("李明", "小红", "王建"),
  age=c(30, 35, 28), 
  height=c(180, 162, 175),
  gender=c("男","女","男"),
  stringsAsFactors=FALSE
)
print(oneframe)
#1.向量是 R 中最基本的一维数据结构
#2.列表是灵活的容器,是一维结构，可包含任意类型的元素
#3.数据框是特殊的列表,数据框是二维结构它的每个元素
#必须是向量，且所有列的长度必须相同



