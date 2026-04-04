CREATE TABLE Daily (
    day VARCHAR(20),
    status VARCHAR(20)
);

INSERT INTO Daily VALUES
('Mon', 'approved'),
('Mon', 'declined'),
('Tue', 'approved'),
('Tue', 'approved');

-- answer
select day,
sum(case 
         when status = 'approved' then 1
         else 0 
    end) as total_approved 
from daily
group by day;
