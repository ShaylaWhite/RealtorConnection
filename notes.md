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