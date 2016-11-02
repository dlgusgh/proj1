# Q0: Why is this error being thrown?

There is no pokemon model and no controller for that model either so it errors.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Pokemon appear in the same order that they were seeded into the database. A common factor is that they all have a pokemon id, a level, and a realted trainer id.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

the line creates a new button on the home page of my website and capture_path is a function that returns the route to capture a pokemon while taking in the id of the pokemon that it wants to capture

# Question 3: What would you name your own Pokemon?

Leemon.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in :back in order to return to the previous page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

it sets the error variable so that you can later access it in the view in order to call the specific error on the page.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
