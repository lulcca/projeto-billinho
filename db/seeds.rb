# CREATING INSTITUTIONS
Institution.create(name:"ANGLO CASSIANO RICARDO", cnpj:"09414059000109", ies_type:"Escola")
Institution.create(name:"CENTRO EDUCACIONAL ETIP", cnpj:"05066213000130", ies_type:"Escola")
Institution.create(name:"COLÉGIO SINGULAR")
Institution.create(name:"IPEI - CRIANÇA CRIANDO", cnpj:"58154246000106", ies_type:"Creche")
Institution.create(name:"UNIVERSIDADE FEDERAL DE SÃO PAULO - UNIFESP", cnpj:"60453032000174", ies_type:"Universidade")
Institution.create(name:"UNIVERSIDADE FEDERAL DO ABC - UFABC", cnpj:"07722779000106", ies_type:"Universidade")

# CREATING STUDENTS
Student.create(name:"Caio Pereira Oliveira", cpf:"28365638851", gender:"M", payment_method:"Cartão")
Student.create(name:"Carolina Barbosa Oliveira", cpf:"94092101945", gender:"F", payment_method:"Boleto")
Student.create(name:"Emily Correia Lima", cpf:"34208948566", gender:"O", payment_method:"Boleto")
Student.create(name:"Eduardo Castro Martins", cpf:"90517514354", gender:"M", payment_method:"Boleto")
Student.create(name:"Joao Barbosa Cardoso", cpf:"96179123411", gender:"M", payment_method:"Cartão")
Student.create(name:"Marisa Almeida Ribeiro", cpf:"94523134200", gender:"F", payment_method:"Boleto")

# CREATING ENROLLMENTS
Enrollment.create(total_value:12999.99, max_payment:2, payment_due_date:20, course_name:"Ciência e Tecnologia (Bacharelado)", institution_id:5, student_id:1)
Enrollment.create(total_value:7999.99, max_payment:2, payment_due_date:31, course_name:"Ciência da Computação (Bacharelado)", institution_id:5, student_id:1)
Enrollment.create(total_value:19999.99, max_payment:2, payment_due_date:2, course_name:"Engenharia da Computação (Bacharelado)", institution_id:4, student_id:4)

# for some reason payments are not being created automatically with enrollments when imported by seeds.
# should work as intended (automatically) when enrollments are created via post method.
# CREATING PAYMENTS
Payment.create(value:6500, due_date:"20/02/2022", enrollment_id:1)
Payment.create(value:6500, due_date:"20/03/2022", enrollment_id:1)
Payment.create(value:4000, due_date:"31/01/2022", enrollment_id:2)
Payment.create(value:4000, due_date:"28/02/2022", enrollment_id:2)
Payment.create(value:10000, due_date:"02/02/2022", enrollment_id:3)
Payment.create(value:10000, due_date:"02/03/2022", enrollment_id:3)