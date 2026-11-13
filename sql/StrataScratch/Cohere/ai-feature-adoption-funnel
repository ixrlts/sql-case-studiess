sql
-- StrataScratch
-- Cohere, Anthropic
-- ID 10583
-- AI Feature Adoption Funnel
-- Medium

 SELECT 'impression' AS funnel_stage, COUNT(DISTINCT CASE WHEN event_type = 'impression' THEN user_id END) AS unique_users
 FROM ai_funnel_events
UNION ALL
 SELECT 'first_use', COUNT(DISTINCT CASE WHEN event_type IN ('first_use', 'repeat_use') THEN user_id END)
 FROM ai_funnel_events
UNION ALL
 SELECT 'repeat_use', COUNT(DISTINCT CASE WHEN event_type = 'repeat_use' THEN user_id END)
 FROM ai_funnel_events
