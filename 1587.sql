select name, sum(amount) as balance
from Users natural join Transactions
group by account
having sum(amount)>10000;
