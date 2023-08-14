SELECT x,y,z,if(x+y>z and x+z>y and y+z>x,'Yes','No') as triangle
FROM Triangle;


SELECT x,y,z,
CASE WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes' ELSE 'No' END as triangle
FROM Triangle;
