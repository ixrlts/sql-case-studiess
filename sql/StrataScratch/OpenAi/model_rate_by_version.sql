sql
-- StrataScratch
-- OpenAI/ChatGPT
-- ID 10597
-- Thumbs-Up Rate by Model Version
-- Medium

SELECT model_version,
 ROUND (100.0*COUNT(DISTINCT CASE WHEN feedback = 'thumbs_up' THEN response_id END)
 /COUNT(DISTINCT response_id))
 AS thumbs_up_pct
FROM ai_response_feedback
WHERE feedback IN ('thumbs_up', 'thumbs_down') 
GROUP BY model_version
ORDER BY model_version
