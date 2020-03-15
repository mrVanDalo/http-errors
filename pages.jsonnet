# https://tint-and-shade.hashbase.io/
local entry(a,b,c,message) = 
  { line_color: "#283939",
    background_color: "#C0D3D3",
    fill_color: "#F59E9E",
    code : { a: a, b: b, c: c },
    message : message,
  };
[
  entry(4,0,0,"Bad Request"),
  entry(4,0,1,"Unauthorized"),
  entry(4,0,2,"Payment Required"),
  entry(4,0,3,"Forbidden"),
  entry(4,0,4,"Not Found"),
  entry(4,0,5,"Method not Allowed"),
  entry(4,0,6,"Not Acceptable"),

  entry(5,0,0,"Internal Server Error"),
  entry(5,0,1,"Not Implemented"),
  entry(5,0,2,"Bad Gateway"),
  entry(5,0,3,"Service Unavailable"),
  entry(5,0,4,"Gateway Timeout"),

]
