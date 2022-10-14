-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT 
	cf_id, 
	backers_count 
FROM campaign 
WHERE outcome = 'live'
ORDER by backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT 
	DISTINCT(bkr.cf_id), 
	campaign.backers_count
FROM backers AS bkr
INNER JOIN campaign ON campaign.cf_id = bkr.cf_id
WHERE campaign.outcome = 'live'
ORDER by backers_count DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
select  
	cntc.first_name,
	cntc.last_name,
	cntc.email,
	(cmp.goal - cmp.pledged) AS Remaining_goal_amount
INTO email_contacts_remaining_goal_amount
from campaign AS cmp
INNER JOIN contacts AS cntc
ON cntc.contact_id = cmp.contact_id
WHERE cmp.outcome = 'live'
ORDER by Remaining_goal_amount DESC;



-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT 
	bkr.email,
	bkr.first_name,
	bkr.last_name,
	cmp.cf_id,
	cmp.comapany_name,
	cmp.description,
	cmp.end_date,
	(cmp.goal - cmp.pledged) AS "Left Of Goal"
INTO email_backers_remaining_goal_amount
FROM backers as bkr join campaign as cmp
ON cmp.cf_id = bkr.cf_id 
INNER Join contacts AS cntc
ON cntc.contact_id = cmp.contact_id
ORDER by bkr.last_name , bkr.first_name;



-- Check the table
SELECT * FROM email_backers_remaining_goal_amount;

