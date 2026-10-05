-- Backfill the news page's current stories into the database.
UPDATE "NewsPost" SET "category" = CASE "slug"
  WHEN 'school-fees-support-for-100-orphans' THEN 'Education'
  WHEN 'widows-empowerment-program-launched' THEN 'Empowerment'
  WHEN 'medical-support-reaches-remote-communities' THEN 'Healthcare'
  WHEN 'community-outreach-brings-hope' THEN 'Outreach'
  ELSE "category"
END;

INSERT INTO "NewsPost" ("id","title","slug","category","excerpt","body","imageUrl","published","publishedAt","createdAt","updatedAt")
SELECT 'news-sharing-food-restoring-dignity','Sharing Food, Restoring Dignity','sharing-food-restoring-dignity','Food Support',
'Food support gives vulnerable families more than a meal — it reminds them that their community cares.',
'Food support gives vulnerable families more than a meal — it reminds them that their community cares.',
'/images/food-5.jpg',true,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM "NewsPost" WHERE "slug"='sharing-food-restoring-dignity');

INSERT INTO "NewsPost" ("id","title","slug","category","excerpt","body","imageUrl","published","publishedAt","createdAt","updatedAt")
SELECT 'news-creating-brighter-days-for-children','Creating Brighter Days for Children','creating-brighter-days-for-children','Children',
'Every child deserves love, encouragement and the opportunity to grow into a hopeful tomorrow.',
'Every child deserves love, encouragement and the opportunity to grow into a hopeful tomorrow.',
'/images/food-6.jpg',true,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM "NewsPost" WHERE "slug"='creating-brighter-days-for-children');