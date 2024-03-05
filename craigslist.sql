-- Design a schema for Craigslist! Your schema should keep track of the following
-- - The region of the craigslist post (San Francisco, Atlanta, Seattle, etc)
-- - Users and preferred region
-- - Posts: contains title, text, the user who has posted, the location of the posting, the region of the posting
-- - Categories that each post belongs to

Tables: 
    regions, users, preferred region, posts, categories
    
- regions: 
    id, 
    name
- users: 
    id, 
    name, 
    username
- region_prefs: 
    id, 
    region_id, 
    user_id
- posts: 
    id, 
    title, 
    text, 
    user_id, 
    location, 
    region_id, 
    category_id
- categories: 
    id, 
    type