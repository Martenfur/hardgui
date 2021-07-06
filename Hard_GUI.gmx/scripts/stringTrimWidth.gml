///stringTrimWidth(str,width)
var t_str,t_w,t_strW
t_str=argument0
t_w=  argument1

t_strW=string_width(t_str)

if t_w<=0
{return ""}

if t_strW>t_w
{
  t_strW-=string_width("...")
  
  var t_ratio=t_w/t_strW  
  
  var t_l=ceil(t_ratio*string_length(t_str))
  while(string_width(string_copy(t_str,1,t_l))>t_w)
  {
    t_l-=1
   
  }
 
  return string_copy(t_str,1,t_l)+"..."
}

return t_str
