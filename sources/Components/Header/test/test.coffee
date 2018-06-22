pattern = RegExp "[\u4E00-\u9FA5]+"
str = "中文字符"
if pattern.test str
  console.log 'hello'
else
  console.log 'sorry'

# isType = (str, pattern) =>
#   if pattern.test str
#     console.log '这是中文'
#   else 
#     console.log '不是中文'
    
isType "中文字符",RegExp "[\u4E00-\u9FA5]+"
    