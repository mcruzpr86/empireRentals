use RebelRentals;
insert into inventory
    (item_name, price, quantity, need_restocking)
values
    ('AT-AT', 52635.99, 5, true);

select *
from inventory
where quantity >= 5 and price > 30 and id = 2
order by quantity asc
limit 1 

#------------------------------------

use RebelRentals;

select item_name, price, quantity
from inventory
where quantity >= 5
order by quantity asc

select *
from inventory

#------------------------------------

use RebelRentals;

select max(quantity), item_name
from inventory
where quantity >= 5
group by item_name
asc

select *
from inventory
#------------------------------------

use RebelRentals;

alter table inventory
add category varchar(20)

select *
from inventory
#------------------------------------

use RebelRentals;

update inventory
set category = 'Vehicles'

select *
from inventory
#------------------------------------

use RebelRentals;

select sum(quantity), category
from inventory
group by category

select *
from inventory
#------------------------------------

use RebelRentals;

alter table inventory
add isDeleted varchar(20)

select *
from inventory
#------------------------------------

use RebelRentals;

update inventory
set isDeleted = true
where id = 1;

select *
from inventory
where isDeleted = false

select *
from inventory
#------------------------------------
use RebelRentals;

delete
from inventory
where id = 1;

select *
from inventory

#------------------------------------

use RebelRentals;

select count(item_name), item_name
from inventory
group by item_name
having count(item_name) > 1

select *
from inventory;

#------------------------------------

use RebelRentals;

alter table inventory
drop column need_restocking

select *
from inventory

#------------------------------------

use RebelRentals;

alter table inventory
modify category varchar
(100);

select *
from inventory

#------------------------------------

use RebelRentals;

drop table inventory

drop database RebelRentals