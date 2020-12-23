#associations/models

	-users
	-projects
	-requirements
	-join table project_requirements
	
	-has many relationship
		-user has many projects
	-belongs to relationship 
		-project_requirements belongs to project
		-project_requirements belongs to requirements
		
		-project belongs to user
	-has many through 
		-projects have many project_requirements
		-projects have many requirements through project_requirements
		
		-requirements have many project_requirements
		-requirements have many projects through project_requirements
		
		
	-Rails g resource <for each model> remember to add the no test framework
		-add the sessions controller 
		
	-Add the macros for the models 
		-Has many
		-Belongs to etc..
		
-#validations
	-users => important
		-username, presence
	 -events- validate presence of a name 
	-countdowns-validates presence of a datetime
	
#models
	-foreign keys go into the table as belongs_to :user and belongs_to :project
	
#scope methods

	-live in your model 
	-class method because you query all of the instances of the table 
	
	-activerecord query methods
		-where
		-find
		-order
		-all
		-exists
		-any
		-many
	-scope method is oing to be responsible for returning the set of data based on what that methods goal is 
	
		-syntax
			Scope :method_name, -> {activerecord_method(column: 'value') }
	
		#reviews table has a rating column and I want to return all of the books with a rating of 5 
			Scope :high_rating, -> {where(rating: 5) }
			
		-you're going to call in the controller Class.scope_method_name
			-instance_variable = Review.high_ratings
			
		-long way scope method 
		
			Def self.high_ratings
				Where(rating: 5)
			end
#authentication
	-bcrypt added to the gemfile
	-has_secure_password in the users model 
	-password_digest in the users table

	-users controller is responsible for creating our user objects => signing  up
	
	-sessions controller is responsible for logging users in/out 
	
#routes 
	Root 'application#home'
	Get '/signup', to: 'users#new'
	Post '/signup', to: 'users#create'
	
	Get '/login', to: 'sessions#new'
	Post '/login', to: 'sessions#create'
	Delete '/logout', to: 'sessions#destroy'
	
 <% if params[:project_id] %>
          <%= deadline.hidden_field :project_id, value: @project.id%>
        <%else%>
          <%= deadline.hidden_field :project_id, value: params[:requirement][:deadlines_attributes].values[0].values[0] %>
        <%end%>

		
        <% if params[:project_id] %>
          <%= deadline.hidden_field :project_id, value: @project.id%>
        <%else%>
          <%= deadline.hidden_field :project_id, value: params[:requirement][:deadlines_attributes].values[0].values[0] %>
        <%end%>

Use the Ruby on Rails framework.

Your models must:

• Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

• Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

Your application must provide standard user authentication, including signup, login, logout, and passwords.

Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

You must include and make use of a nested resource with the appropriate RESTful URLs.

• You must include a nested new route with form that relates to the parent resource

• You must include a nested index or show route

Your forms should correctly display validation errors.

a. Your fields should be enclosed within a fields_with_errors class

b. Error messages describing the validation failures must be present within the view.

Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

• Logic present in your controllers should be encapsulated as methods in your models.

• Your views should use helper methods and partials when appropriate.

• Follow patterns in the Rails Style Guide and the Ruby Style Guide.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
		