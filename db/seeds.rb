# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
List.delete_all
Task.delete_all

my_user=User.create( email:'email@email.com',password:"password")
my_list=my_user.lists.create( name:"My list",description:"This is my first list")
my_task=my_list.tasks.create( name:"My task",description:"This is my first task",status:true)