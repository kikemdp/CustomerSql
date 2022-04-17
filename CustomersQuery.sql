
SELECT c.FirstName + ' ' + c.LastName as FullName
      ,c.Age
	  ,o.OrderID
	  ,o.DateCreated
	  ,o.MethodofPurchase as PurcharseMethod
	  ,od.ProductNumber
	  ,od.ProductOrigin
  FROM Customer c 
  INNER JOIN Orders o ON c.PersonID = o.PersonID
  INNER JOIN OrdersDetails od ON od.OrderID = o.OrderID
  WHERE od.ProductID = '1112222333'
