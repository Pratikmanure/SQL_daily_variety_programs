CREATE TABLE Transactions (
    id INT,
    status VARCHAR(50),
    amount INT
);

INSERT INTO Transactions VALUES
(1, 'approved', 100),
(2, 'declined', 200),
(3, 'approved', 300);

-- answer

  SELECT count(*) AS total_transactions,
SUM(CASE
        when status = 'approved' then 1
        else 0
    END ) AS approved_transactions   
from Transactions   
