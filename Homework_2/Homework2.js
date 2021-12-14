/*----------------------Find documents in the collection using title and instructions--------------------------- */
//Find all recipes with a title that starts with the letter "p".
db.getCollection('cookbook').find({title: /^p/i})
;
//Find all recipes with a title that contains the letter "e"
db.getCollection('cookbook').find({title: /e/i}) 
;
//Find all recipes with a title that contains the letter "e" and an instruction that contains the letter "a".
db.getCollection('cookbook').find({$and: [ {title: /e/i}, {step: {$elemMatch: { description:/a/i}}} ] }) 
;
//Find all recipes with a title that contain the letter "e" or an instruction that contains the letter "a".
db.getCollection('cookbook').find({$or: [ {title: /e/i}, {step: {$elemMatch: { description:/a/i}}} ] })
;

/*----------------------Find documents in the collection using the ingredient array--------------------------- */
//Find all recipes with the ingredient "egg".
db.getCollection('cookbook').find({ingredient: {$elemMatch: {name: /egg/i}}}) 
;
//Find all recipes without the ingredient "egg".
db.getCollection('cookbook').find({ingredient: {$not: {$elemMatch: {name: /egg/}}}})
;
//Find all recipes with the ingredient "egg" and "sugar"
db.getCollection('cookbook').find({$and: [{ingredient: {$elemMatch: {name: /egg/}}} , {ingredient: {$elemMatch: {name: /sugar/}}}]})
;
//Find all recipes with the ingredient "egg" or "sugar".
db.getCollection('cookbook').find({$or: [{ingredient: {$elemMatch: {name: /egg/}}} , {ingredient: {$elemMatch: {name: /sugar/}}}]})
;

/*----------------------Counting the number of documents in a collection--------------------------- */
//Count how many recipes have exactly 3 ingredients
db.cookbook.count({ingredient:{$size:3}})
;
/*----------------------Aggregation--------------------------- */
//For each category ("dessert", "breakfast", etc.) find the number of dishes in the category
db.cookbook.aggregate([
   { $unwind: "$category" },
   { $group: { _id: "$category", cookbook_ids: { $addToSet: "$_id" } }  },
   { $project:{ count: { $size: "$cookbook_ids"  } } }
])