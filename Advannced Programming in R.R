#A function accepts input arguments and produces output by executing valid R commands present in
#the function.
#A file can have one or more function definitions.
#Functions are created using the command function()

#fun = function(arguments){
#statements
#}

volume_cyliner = function(r ,h ,dia)
{
  vol = pi*r*r*h
  print(r)
  return(vol)
}

volume_cyliner(r= 10, h = 1)

