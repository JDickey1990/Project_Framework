Specifications for the Rails Assessment
Specs:
 [x] Using Ruby on Rails for the project
    Ruby on rails is used for the project.
 [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    A User has many Projects.
 [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    A Project belongs to a User.
 [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    A project has many requirements and a Requirement has many projects through the deadline model.
 [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through
 Ingredients, Item has_many Recipes through Ingredients)
    Projects have many requirements through Deadlines and Requirements have many projects through Deadlines.
 [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    The Deadline join table has a user submittable attribute of completed and deadline.
 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient,    Item)
    Reasonable validations are in place for my models.
 [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    The deadline model has a scope method that queries the database for deadlines with a completed attribute that compares to false.
 [x] Include signup (how e.g. Devise)
    The user controller handles the sign up functionality with the new and create actions.
 [x] Include login (how e.g. Devise)
    The session controller handles the log in functionality with the new and create actions.
 [x] Include logout (how e.g. Devise)
    The session controller handles the log out functionality with the destroy action.
 [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    Omniauth handles the third party signup/login functionality in the sessions controller.
 [x] Include nested resource show or index (URL e.g. users/2/recipes)
    URL /projects/:id/requirements/:id which is accessed through the projects show page when you click on the requirement deails link for a requirement.
 [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    URL /projects/:id/requirements/new which you are directed to when clicking on the add a requirement link on the projects show page.
 [x] Include form display of validation errors (form URL e.g. /recipes/new)
    Validation errors are displayed for all of the forms in the application other than the login form which uses flash errors.

Confirm:
 [x] The application is pretty DRY
    I refactored my project with partials to dry up the code.
 [x] Limited logic in controllers
    I tried to limit any logic in the controller actions and separate it to the appropriate model.
 [x] Views use helper methods if appropriate
    I was unable to identify and good applications of helper methods in my views.
 [x] Views use partials if appropriate
    I used partials to render validation errors on my new views.