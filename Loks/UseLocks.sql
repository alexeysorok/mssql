BEGIN TRAN
    UPDATE Orders
    SET Processed = 1
    WHERE OrderId in (1000, 9999)
COMMIT 
-- обновление записи без индекса, будет долго сканировать всю таблицу