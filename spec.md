Specifications for the Sinatra Assessment

Specs:

    [x]Use Sinatra to build the app.
        My controller classes inherted from Sinatra::Base
    [x]Use ActiveRecord for storing information in a database
        Both of the models inherted from ActiveRecord::Base
    [x]Include more than one model class (e.g. User, Post, Category)
        There are two models. a user model and a ads model.
    [x]Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        the user has many ads.
    [x]Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        Ads belongs to user.
    [x]Include user accounts with unique login attribute (username or email)
        The user may not create second account with the same username. I have placed if statement logic in the signup post route to check if the user name exists in the database. if so an error message is raised.
    [x]Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        These routes are found in the ads_controller.rb
    [x]Ensure that users can't modify content created by other users
        I have placed logic in the routes to check that the loged in user is the creater of the ad. user can't edit or delete others' ads.
    [x]Include user input validations
        inputs are required to presest data to the database. user will be asked to re-enter info if there are missing information.
    [x]BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
        I have have implemented error messages.
    {x}Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

    [x]You have a large number of small Git commits
    [x]Your commit messages are meaningful
    [x]You made the changes in a commit that relate to the commit message
    [x]You don't include changes in a commit that aren't related to the commit message
