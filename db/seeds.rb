Todo.create(title: 'Learn Relay', body: 'Learn Relay with Rails GraphQL backend')
Todo.create(title: 'Learn Nx', body: 'Learn NX for module management')

l1 = List.create
l2 = List.create
l3 = List.create

l1.todos = Todo.all
l2.todos << Todo.first
l3.todos << Todo.last