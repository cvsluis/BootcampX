-- average time to start an assistance request

SELECT AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;
