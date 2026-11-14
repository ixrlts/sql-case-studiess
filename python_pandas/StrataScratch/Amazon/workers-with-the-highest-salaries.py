python pandas
-- StrataScratch
-- Amazon, DoorDash
-- ID 10353
-- Workers With The Highest Salaries
-- Easy

import pandas as pd
merged = pd.merge(worker, title, left_on='worker_id', right_on='worker_ref_id', how='inner')
merged['rnk'] = merged['salary'].rank(method='min', ascending=False)
top_paid = merged[merged['rnk'] == 1]
top_paid[['worker_title']].rename(columns={'worker_title': 'best_paid_title'}).sort_values('best_paid_title')
