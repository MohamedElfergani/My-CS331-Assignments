Homework 2-NoSQL Database Systems 
MongoDB 
Due Friday Dec 10th, 2021 at 11:59PM 
Objectives: With the new demand of using NoSQL in many projects, it is important for you as a future 
Software developer to know at least one NoSQL system and understand how to use it to store 
your data and query. In this homework, you will try some simple operations with MongoDB. 
Skills 1. Learn how to use MongoDB
2. Write simple json file to structure the database and insert your data
3. Write simple queries to retrieve some data out of your database
Description: 
The festival season is approaching! We all have some traditions to celebrate, and part of these 
traditions include food. You have been collecting recipes from all your family members to build 
a Recipe book full of traditions for the family to use. 
You decided to use MongoDB to build your recipes database.  
The plan is to have a recipe scheme, with each recipe consisting of: 
• A title
• Some ingredients
• An ingredient consists of a quantity, a unit of measurement, and a type.
• Example: 1-liter milk
• Some cooking instructions (a kind of algorithm)
• A category like "snack", "starter", "main course", "dessert", "breakfast" etc.
Example: Please see example for one recipe at the end of the document 
Homework Tasks: 1. Make a new collection named cookbook.
• Hint: if you insert or import documents into a collection that doesn't yet exist, the
collection will be automatically created.
2. Insert documents into the collection: Insert at least 10 documents for 10 different
recipes into the collection (do not use the example provided as one of the 10).
• You can use simple recipes like "hardboiled egg", "fried egg", "pancakes", "omelet",
etc.
• Instructions should be very short.
• Some of the documents must include the following ingredients: milk, eggs and water.
2 
3. Find documents in the collection using title and instructions
• Find all recipes with a title that starts with the letter "p".
• Find all recipes with a title that contains the letter "e".
• Find all recipes with a title that contains the letter "e" and an instruction that contains
the letter "a".
• Find all recipes with a title that contain the letter "e" or an instruction that contains
the letter "a".
4. Find documents in the collection using the ingredient array
• Find all recipes with the ingredient "egg".
• Find all recipes without the ingredient "egg".
• Find all recipes with the ingredient "egg" and "sugar".
• Find all recipes with the ingredient "egg" or "sugar".
5. Counting the number of documents in a collection: General hint: The collection count
method
• Count how many recipes have exactly 3 ingredients
6. Aggregation
• For each category ("dessert", "breakfast", etc.) find the number of dishes in the
category