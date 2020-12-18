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
	
	Application Controller - best place to put the root route
		Def home
		
		End 
     

      
         <fieldset><br>
       <%= f.label "Requirement Deadline" %><br>
       <%= f.fields_for :deadlines, @project.deadlines.build do |deadline| %>
         <p><%= f.label :deadline %>
         <%= deadline.datetime_local_field :deadline %></p>
       <% end %>
    </fieldset><br>