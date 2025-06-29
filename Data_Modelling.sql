-- Database selection
use supply_db;
/* List of tables
department; 
category;
customer_info;
product_info ;
ordered_items ;
FROM orders;
*/

/***************************************************************************************************
Problem 1: Get the number of orders by the Type of Transaction. Please exclude orders shipped from 
Sangli and Srinagar. Also, exclude the SUSPECTED_FRAUD cases based on the Order Status. Sort the 
result in the descending order based on the number of orders.

Algorithm:
Input: Orders table: Order_Id, Type, Order_City, Order_Status
Expected Output: Type of Transaction | Orders; Sorted in descending order of Orders*/
-- Step 1: Filter out ‘Sangli’ and ‘Srinagar’ from the city column of the data


-- Step 2: Filter out ‘SUSPECTED_FRAUD ’ from the order_status column of the data

-- Step 3: Aggregation – COUNT(order_id), group by Transaction_type

-- Step 4: Sort the result in descending order of Orders


/***************************************************************************************************/
-- Problem 2: Get the list of the Top 3 customers based on the completed orders along with the following details:
--Customer Id, Customer First Name, Customer City, Customer State, Number of completed orders, Total Sales
-- Algorithm:
/* Input: Orders table: Order_Id and Order_Status; 
		Ordered_items table: Sales; 
        Customer_info table: Id, First_Name, City, State;
Expected Output: Customer Id | Customer First Name | Customer City | Customer State | 
				Completed orders | Total Sales; Retain only top 3 customer based on Completed orders */

-- Step 1: Join orders and order_items to get order_id level sales

-- Step 2: Filter for ‘COMPLETE’ orders from the order_status column of the orders table

-- For the Step 2 code, we can the result for correctness by executing the following code:

/*The IDs displayed in the results section, after executing the code given above, were not present in the results section of the Step 2 code. 
This indicates that all the IDs present after performing Step 2 are meant for the completed orders.*/

-- Step 3: Join above result with Customers table and create customer id level summary
-- this code has error 


-- Step 4: Aggregation – COUNT(order_id), SUM(Sales) 


/***************************************************************************************************
Question 3: Get the order count by the Shipping Mode and the Department Name. Consider departments 
with at least 40 closed/completed orders.

Algorithm:
Input: orders: order_id, Shipping_Mode and Order_Status; ordered_items; product_info; department: name;
Expected Output: Shipping Mode | Department Name | Orders; 
				 Retain departments with atleast 40 closed/completed order*/

-- Step 1: Join orders, ordered_items, product_info and department to get all the departments and orders associated with them


-- Step 2: Filter for ‘COMPLETE’ and ‘CLOSED’ from order_status column of the orders table       -- this is part of the final query

-- Step 3: Aggregation – COUNT(order_id), group by department name;                                 -- this is part of the final query


-- Step 4: In the above table filter for COUNT(order_id)>=40                         -- this is part of the final query


-- Step 5: From Step 1 perform aggregation – COUNT(order_id), group by Shipping mode and department name; 
--Retain only those department names that were left over after the filter applied in Step 4



/***************************************************************************************************
Question 4: Create a new field as shipment compliance based on Real_Shipping_Days and Scheduled_Shipping_Days. 
It should have the following values:
	Cancelled shipment - If the Order Status is SUSPECTED_FRAUD or CANCELED
	Within schedule - If shipped within the scheduled number of days 
	On time - If shipped exactly as per schedule
	Upto 2 days of delay - If shipped beyond schedule but delay upto 2 days
	Beyond 2 days of delay - If shipped beyond schedule with delay beyond 2 days

Which shipping mode was observed to have the greatest number of delayed orders?

Algorithm:
Input: orders: order_id, Real_Shipping_Days, Scheduled_Shipping_Days and Shipping_Mode
Expected Output: 1) order_id | shipment_compliance; 2) shipping_mode | Number of delayed orders*/

-- Step 1: Create a shipment compliance column based on the criteria 

-- Step 2: Test and confirm if all the cases are taken care of. Check for null values too

/*Step 3: Filter for delayed orders only
Step 4: Aggregation – COUNT(order_id), group by shipping mode; 
		Sort in descending order of order count; Retain the top most row*/

/***************************************************************************************************
Question 5: An order is cancelled when the status of the order is either CANCELED or SUSPECTED_FRAUD. 
Obtain the list of states by the order cancellation % and sort them in the descending order of the 
cancellation %.         Definition: Cancellation % = Cancelled order / Total Orders

Algorithm:
Input: Orders: Order_Id, Order_State and Order_Status
Expected Output: Order State | Cancellation Percentage;  Sort in descending order of cancellation % */

-- Step 1: Filter for ‘CANCELED’ and ‘SUSPECTED_FRAUD’ from order_status column of the orders table

-- Step 2: From result of Step 1, perform aggregation – COUNT(order_id), group by Order_State

-- Step 3: Create separate aggregation of orders table - COUNT(order_id), group by Order_State; to get total orders

-- Step 4: Join results of Step 2 and Step 3 on Order_State             --Part of final code

/*Step 5: Create new column with calculation Cancellation Percentage =Cancelled Orders / Total Orders
Step 6: Sort the final table in descending order of Cancellation Percentage*/
