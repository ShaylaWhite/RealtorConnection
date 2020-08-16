 Realtor_Connection 

# associations/models
-houses
-users
-appointments *join table*


# Houses 
belongs_to :user
has_many :appointments
has_many :users, through appointments 


# 
- name:string
- listing_price:integer
- user_id:string
# 


# Users
secure_password
has_many :appointments
has_many :houses, through :appointments


# 
- first_name :string
- last_name :string
- usesr_name :string
- email :string
- password_digest :string
# 


# Appointments 
belongs_to :houses
belongs_to :users 

# 
- time :datestamp
- buyer_name :string 
- user_id :integer
- house_id :integer
- status :string

#scope methods

lives in your model and a class method
responsible for returning a set of data based on what that method goal is. 

Writing Scope Methods
-syntax

scope :method_name,  -> { activerecord_method(column: "value')} 


all houses with a status of still on the market

scope :status,  -> where(status: 'sold'})

whereever you would like to render the data use:

Class.scope_method_name

-@house_status = @Appointment.status

#activerecord query methods
- where
- find
- order
-all
