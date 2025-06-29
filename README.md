# E-Commerce-Order-Analytics-and-Fulfillment-Insights

**Business Objective**

The goal of this project is to analyze order and shipment data of an e-commerce business to derive actionable insights for improving operational efficiency, customer satisfaction, and fraud detection. The analysis focuses on:

- Identifying the volume and patterns of transactions by type, while excluding suspicious or irrelevant cases.

- Recognizing top-performing customers based on completed orders and sales contributions.

- Evaluating the performance of departments and shipping modes to streamline logistics.

- Creating a Shipment Compliance Metric to assess delivery performance versus schedule, helping identify delay trends by shipping mode.

- Highlighting the states with the highest order cancellation percentages, which can inform targeted fraud checks or customer service improvements.

This project showcases practical SQL skills applied to real-world business problems in e-commerce logistics and customer relationship management.

Question 1: Get the number of orders by the Type of Transaction. Please exclude orders shipped from 
Sangli and Srinagar. Also, exclude the SUSPECTED_FRAUD cases based on the Order Status. Sort the 
result in the descending order based on the number of orders.

![image](https://github.com/user-attachments/assets/e38f7283-5470-42d6-b10c-247d8d099a7b)

Answer- DEBIT is the most frequently used transaction type, indicating a preference for digital or card-based payments over cash in this filtered dataset.

Question 2: Get the list of the Top 3 customers based on the completed orders along with the following details:
-- Customer Id, Customer First Name, Customer City, Customer State, Number of completed orders, Total Sales.

![image](https://github.com/user-attachments/assets/2edf67b8-8563-4ffa-a3f8-0e70f54e268f)

Answer-All top 3 customers are named Mary, suggesting either common customer naming or duplicate entries across different locations. Santa Clara (CA) tops the list in terms of total sales among them.

Question 3: Get the order count by the Shipping Mode and the Department Name. Consider departments 
with at least 40 closed/completed orders.

![image](https://github.com/user-attachments/assets/3007220c-fe9b-433a-b539-476fd43aa135)

Answer- The Standard Class shipping mode and the Fan Shop department have the highest number of closed/completed orders, indicating strong demand and consistent delivery in that segment.

Question 4: Create a new field as shipment compliance based on Real_Shipping_Days and Scheduled_Shipping_Days. 
It should have the following values:
	Cancelled shipment - If the Order Status is SUSPECTED_FRAUD or CANCELED
	Within schedule - If shipped within the scheduled number of days 
	On time - If shipped exactly as per schedule
	Upto 2 days of delay - If shipped beyond schedule but delay upto 2 days
	Beyond 2 days of delay - If shipped beyond schedule with delay beyond 2 days

Which shipping mode was observed to have the greatest number of delayed orders?

![image](https://github.com/user-attachments/assets/ba9a97c0-98ed-4a43-adf7-c92313c132cc)

Answer- The Standard Class shipping mode experienced the highest number of delayed shipments, indicating potential bottlenecks or inefficiencies in that delivery category.

Question 5: An order is cancelled when the status of the order is either CANCELED or SUSPECTED_FRAUD. 
Obtain the list of states by the order cancellation % and sort them in the descending order of the 
cancellation %.         

![image](https://github.com/user-attachments/assets/8a15fb3e-a146-44e9-bd16-9e7937550c0f)

Answer- Manipur had the highest cancellation percentage at 11.11%, which may warrant a deeper investigation into local logistics, fraud trends, or customer behavior.



