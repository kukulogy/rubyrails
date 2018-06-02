# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
classroom = Classroom.create([
			{ title: 'Biology 101', text:" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus debitis nulla sint, eaque quibusdam, illum rem nemo corporis quidem qui atque voluptatem placeat? Ipsa ullam reprehenderit consectetur, similique recusandae repellendus." }, 
			{ title: 'Automata', text:" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus debitis nulla sint, eaque quibusdam, illum rem nemo corporis quidem qui atque voluptatem placeat? Ipsa ullam reprehenderit consectetur, similique recusandae repellendus." }, 
			{ title: 'Data Structure', text:" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus debitis nulla sint, eaque quibusdam, illum rem nemo corporis quidem qui atque voluptatem placeat? Ipsa ullam reprehenderit consectetur, similique recusandae repellendus." }, 
			{ title: 'Database', text:" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus debitis nulla sint, eaque quibusdam, illum rem nemo corporis quidem qui atque voluptatem placeat? Ipsa ullam reprehenderit consectetur, similique recusandae repellendus." }, 
			])
  
professor = Professor.create([
				{name: 'Jake Peralta'},
				{name: 'Amy Santiago'},
				{name: 'Terry Crew'},
				{name: 'Raymond Holt'},
				])
