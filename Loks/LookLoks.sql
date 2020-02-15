-- currently lock requests and their statuses
SELECT * FROM sys.dm_tran_locks 

-- wait_type (LCK_M_*), blocking_session_id
SELECT * FROM sys.dm_os_waiting_tasks

-- wait_type (LCK_M_*), blocking_session_id
SELECT * FROM sys.dm_exec_requests

SELECT session_id, wait_type, blocking_session_id, resource_description
FROM sys.dm_os_waiting_tasks WITH (NOLOCK)
WHERE session_id > 50
ORDER BY session_id
OPTION (RECOMPILE, MAXDOP 1);


SELECT session_id, status, wait_type, blocking_session_id, last_wait_type, *
FROM sys.dm_exec_requests WITH (NOLOCK)
WHERE session_id > 50
ORDER BY 1
OPTION (RECOMPILE, MAXDOP 1);