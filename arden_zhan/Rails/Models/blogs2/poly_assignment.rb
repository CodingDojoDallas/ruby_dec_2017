# created Comment model
rails g model Comment content:text commentable:references{polymorphic}

# added comments relationship to each model
has_many :comments, as: :commentable


