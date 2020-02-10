calc = function(num1, num2) {

#add
  addition = num1+num2
sum = (paste0("Addition of ", num1, " and " , num2," is " ,addition))
#sub
  substraction = num1-num2
sub = (paste0("Differance of ", num1 ," and ", num2 ," is ", substraction))
  
result = list(sum, sub)

return(result)
}


calc(1,2)
