/*************************************
* Name: Orderby.sql
* Created By: [Changirala Gracy]
* Created On: [25-09-2023]
* CRN: [267]
**************************************/

/*using MySQL ORDER BY clause to sort the result set by one column*/
SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname;

/*sort customers by the last name in descending order, you use the DESC after the contactLastname*/  
SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC;
    
/*ORDER BY clause to sort the result set by multiple columns*/
SELECT 
    contactLastname, 
    contactFirstname
FROM
    customers
ORDER BY 
	contactLastname DESC , 
	contactFirstname ASC;

/*ORDER BY clause to sort a result set by an expression*/    
SELECT 
    orderNumber, 
    orderlinenumber, 
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
   quantityOrdered * priceEach DESC;
   
/*To make the query more readable, you can assign the expression in the SELECT clause a column alias and use that column alias in the ORDER BY clause*/ 
SELECT 
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotal
FROM
    orderdetails
ORDER BY subtotal DESC;

/*To use the FIELD() function*/
 SELECT FIELD('A', 'A', 'B','C');
SELECT FIELD('B', 'A','B','C');

/*use the FIELD() function to map each order status to a number and sort the result by the result of the FIELD() function*/
SELECT 
    orderNumber, status
FROM
    orders
ORDER BY FIELD(status,
        'In Process',
        'On Hold',
        'Cancelled',
        'Resolved',
        'Disputed',
        'Shipped');

/*MySQL, NULL comes before non-NULL values. Therefore, when you the ORDER BY clause with the ASC option, NULLs appear first in the result set*/
SELECT 
    firstName, lastName, reportsTo
FROM
    employees
ORDER BY reportsTo;

/*using the ORDER BY with the DESC option, NULLs will appear last in the result set*/
SELECT 
    firstName, lastName, reportsTo
FROM
    employees
ORDER BY reportsTo DESC;