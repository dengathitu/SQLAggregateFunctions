DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales(
SalesID INT,
CustomersName VARCHAR(50),
Product VARCHAR(50),
Quantity INT,
Price DECIMAL,
SalesDate DATE
);
INSERT INTO Sales(SalesID, CustomersName, Product, Quantity, Price, SalesDate)
VALUES
(101, 'Namachaja Birgen', 'Watch', 12, 3000, '2024-06-23'),
(102, 'Matuya Kituku', 'TV', 10, 5000, '2024-06-24'),
(103, 'Biden Thendu', 'Bags', 15, 2000, '2024-06-25'),
(104, 'Abel Kimondo', 'Tshirts', 100, 500, '2024-06-26'),
(105, 'Geofrey Kungu', 'Umbrella', 120, 1000, '2024-06-27'),
(106, 'Gachaja Bildad', 'Watch', 17, 3000, '2024-06-28'),
(107, 'Muya Kitheka', 'TV', 20, 5000, '2024-06-29'),
(108, 'Beatrice Chinendu', 'Bags', 35, 2000, '2024-06-30'),
(109, 'Mabel Kimono', 'Tshirts', 50, 500, '2024-07-01'),
(110, 'Godfrey Kiragu', 'Umbrella', 60, 1000, '2024-07-02');
SELECT * FROM Sales;
SELECT * FROM Sales ORDER BY SalesDate DESC LIMIT 3;
SELECT
  SUM(Quantity * Price) AS TotalRevenue,
  AVG(Quantity) AS AverageQuantity,
  SUM(Quantity) AS TotalItemsSold,
  COUNT(*) AS NumberOfSales
FROM Sales;