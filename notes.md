Relationships between Models :

User has many Restaurants and has many reviews through Restaurants

Reviews has many Restaurants and has many Users through Restaurants.

Restaurant belongs to a User and Review

________________________________________________________________________________

Migrations

rails g model User username:string email:string uid:string password_digest:string --no-test-framework

rails g model Restaurant name:string location:string cuisine:string user_id:integer   review_id:integer --no-test-framework

rails g model Review taste_rating:integer health_rating:integer description:text --no-test-framework

rails g controller user create new --no-test-framework

rails g controller reviews create new --no-test-framework

rails g controller restaurants create new --no-test-framework

rails g controller sessions --no-test-framework
