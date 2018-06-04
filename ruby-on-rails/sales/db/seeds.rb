User.create name: 'Jose', status: :active, kind: :salesman, email: 'salesman@teste.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :salesman, email: 'salesman2@teste.com', password: 123456
User.create name: 'Marcos', status: :active, kind: :manager, email: 'manager@teste.com', password: 123456

Product.create name: 'SmartPhone', description: 'Un smartphone novo ...', status: :active, price: 20
Product.create name: 'Tablet', description: 'Un tablet  novo ...', status: :active, price:20

Discount.create name: 'Desconto carnaval', description: 'Aplique esse deconto no carnaval', value: '10', kind: :porcent, status: :active
Discount.create name: 'Desconto carnaval dinhero', description: 'Aplique esse deconto quando possivel', value: '10', kind: :money, status: :active

Client.create name: 'Paulo', company_name:'Google', document: '1234', email: 'paul@google.com', user: User.first
Client.create name: 'Julia', company_name:'Google', document: 'abcd', email: 'paul@google.com', user: User.first
