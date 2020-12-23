# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
jordan = User.create(name: "Jordan", password: "1234", email: "jordan@email.com")
jordan.projects.create(name: "Mod 3 ROR", description: "A ruby on rails project", :project_deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

sarah = User.create(name: "Sarah", password: "1234", email: "sarah@email.com")
sarah.projects.create(name: "Mod 3 ROR", description: "An even better ruby on rails project", :project_deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))


#Requirements
Requirement.create(description: "Use the Ruby on Rails framework.", priority: "High")
Deadline.create(requirement_id: 1, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships", priority: "High")
Deadline.create(requirement_id: 2, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))


Requirement.create(description: "Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user", priority: "High")
Deadline.create(requirement_id: 3, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.", priority: "High")
Deadline.create(requirement_id: 4, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).", priority: "High")
Deadline.create(requirement_id: 5, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Your application must provide standard user authentication, including signup, login, logout, and passwords.", priority: "High")
Deadline.create(requirement_id: 6, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...", priority: "High")
Deadline.create(requirement_id: 7, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "You must include and make use of a nested resource with the appropriate RESTful URLs.", priority: "High")
Deadline.create(requirement_id: 8, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: " You must include a nested new route with form that relates to the parent resource", priority: "High")
Deadline.create(requirement_id: 9, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "You must include a nested index or show route", priority: "High")
Deadline.create(requirement_id: 10, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Your forms should correctly display validation errors.

a. Your fields should be enclosed within a fields_with_errors class

b. Error messages describing the validation failures must be present within the view.", priority: "High")

Deadline.create(requirement_id: 11, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.", priority: "High")
Deadline.create(requirement_id: 12, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: " Logic present in your controllers should be encapsulated as methods in your models.", priority: "High")
Deadline.create(requirement_id: 13, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: " Your views should use helper methods and partials when appropriate.", priority: "High")
Deadline.create(requirement_id: 14, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Follow patterns in the Rails Style Guide and the Ruby Style Guide.", priority: "High")
Deadline.create(requirement_id: 15, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))

Requirement.create(description: "Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.", priority: "High")
Deadline.create(requirement_id: 16, project_id: 1, :deadline  => DateTime.strptime("12/25/2020 12:00", "%m/%d/%Y %H:%M"))



