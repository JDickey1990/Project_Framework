# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
jordan = User.create(name: "Jordan", password: "1234", email: "jordan@email.com")
jordan.projects.create(name: "Mod 3 ROR", description: "A ruby on rails project")

sarah = User.create(name: "Sarah", password: "1234", email: "sarah@email.com")
sarah.projects.create(name: "Mod 3 ROR", description: "An even better ruby on rails project")


#Requirements
Requirement.create(description: "Using Ruby on Rails", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 1, project_id: 1)

Requirement.create(description: "include atleast one has_many relationship", priority: "High",:deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 2, project_id: 1)

Requirement.create(description: "include atleast one belongs_to relationship", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 3, project_id: 1)


Requirement.create(description: "include atleast two has_many through relationships", priority: "High",:deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 4, project_id: 1)

Requirement.create(description: "include atleast one many-to-many relationship", priority: "High",:deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 5, project_id: 1)

Requirement.create(description: "The through part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 6, project_id: 1)

Requirement.create(description: "Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 7, project_id: 1)

Requirement.create(description: "Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 8, project_id: 1)

Requirement.create(description: "Include signup", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 9, project_id: 1)

Requirement.create(description: "Include login", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 10, project_id: 1)

Requirement.create(description: "Include logout", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 11, project_id: 1)

Requirement.create(description: "Include third party signup/login (how e.g. Devise/OmniAuth)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 12, project_id: 1)

Requirement.create(description: "Include nested resource show or index (URL e.g. users/2/recipes)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 13, project_id: 1)

Requirement.create(description: "Include nested resource new form (URL e.g. recipes/1/ingredients/new)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 14, project_id: 1)

Requirement.create(description: " Include form display of validation errors (form URL e.g. /recipes/new)", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 15, project_id: 1)

Requirement.create(description: "The application is pretty DRY", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 16, project_id: 1)

Requirement.create(description: "Limited logic in controllers", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 17, project_id: 1)

Requirement.create(description: "Views use helper methods if appropriate", priority: "High", :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 18, project_id: 1)

Requirement.create(description: "Views use partials if appropriate", priority: "High",:deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))
ProjectRequirement.create(requirement_id: 19, project_id: 1)

