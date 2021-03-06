# 2. Place of Interest shiny gadget 
#============================================================================================#

# Retrieve information concerning the place of interest around a given point
# it can be useful in pricing for a multitude of applications including motor or SME's. 
# In fact, knowing that there is 30 bars and no subway station can give us an appreciation on the behavior of the customer.

# To do so, the best in class is the Google Places API. 
# Indeed, Places features more than 100 million businesses and points of interest 
# that are updated frequently through owner-verified listings and user-moderated contributions.

# Specific restrictions about this free API are :

# No more than 10 requests per second
# No more than 150,000 requests per day (after credit card validation)
# Only 20 results per page
# Note that this API requires a private API key : Get a key

# The getPOIs function allows you to get the Point of Interest very easily. You only need to provide the following arguments:

# lat: The latitude of the desired location
# lng: The longitude of the desired location
# radius: the radius of interest in meters. It cannot be higher than 20,000 m
# key: Your API authentication key
# keywords: the keywords use to narrow the research



data = getPOIs(lat = '48.8', lng = '2.2', radius = '5000', key ='YOUR KEY', keywords = c('bar','restaurants'))
POIsViz(data)
