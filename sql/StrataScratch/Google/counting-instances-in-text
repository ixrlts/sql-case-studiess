sql
-- StrataScratch
-- Google
-- ID 9814
-- Counting Instances in Text
-- Hard

SELECT word, COUNT(*) AS occurrences
FROM (
 SELECT regexp_split_to_table(LOWER(contents), '[^a-z]+') AS word
 FROM google_file_store
)
WHERE word IN ('bull', 'bear')
GROUP BY word
