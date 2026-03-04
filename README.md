1.UNION vs UNION ALL
UNION нь давхардсан мөрүүдийг хасна.
UNION ALL нь давхардсан мөрүүдийг хэвээр нь авна.

2.SELF JOIN дээр ON нөхцөлийн талбарын байр солих
Хэрэв = ашиглаж байвал талбарын байр солиход үр дүн өөрчлөгдөхгүй.

3.customer → orders → order_items харьцаа
customers → orders = 1 : N
Нэг customer олон order хийж болно
orders → order_items = 1 : N
Нэг order дотор олон item байж болно

4.orders ба products хоорондын харьцаа
orders ба products нь шууд биш, order_items гэх дундын хүснэгтээр холбогдоно.

Харьцаа:
Нэг order дотор олон product байж болно
Нэг product олон order дээр орж болно
Иймээс:
orders ↔ products = N : M (many-to-many)
orders ба products = N : M (many-to-many) учир дундын хүснэгт заавал ашиглана.
