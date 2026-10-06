-- CreateTable
CREATE TABLE "SiteStatistic" (
    "key" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "suffix" TEXT NOT NULL DEFAULT '',
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "SiteStatistic_pkey" PRIMARY KEY ("key")
);

-- Seed the current website figures as the initial editable defaults.
INSERT INTO "SiteStatistic" ("key", "label", "value", "suffix", "updatedAt") VALUES
  ('children_helped', 'Children Helped', 1250, '+', CURRENT_TIMESTAMP),
  ('districts_reached', 'Districts Reached', 12, '+', CURRENT_TIMESTAMP),
  ('widows_supported', 'Widows Supported', 320, '+', CURRENT_TIMESTAMP),
  ('years_impact', 'Years of Impact', 5, '+', CURRENT_TIMESTAMP),
  ('active_causes', 'Active Causes', 6, '', CURRENT_TIMESTAMP),
  ('impact_percent', 'Impact Figure', 100, '%', CURRENT_TIMESTAMP);
