SELECT x,y,z,if(x+y>z and x+z>y and y+z>x,'Yes','No') as triangle
FROM Triangle;
