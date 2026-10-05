-- Store editable donation payment methods while preserving the existing public card design.
CREATE TABLE "DonationMethod" (
  "id" TEXT NOT NULL,
  "key" TEXT NOT NULL,
  "name" TEXT NOT NULL,
  "eyebrow" TEXT NOT NULL,
  "detailsJson" TEXT NOT NULL,
  "note" TEXT NOT NULL,
  "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updatedAt" TIMESTAMP(3) NOT NULL,
  CONSTRAINT "DonationMethod_pkey" PRIMARY KEY ("id")
);
CREATE UNIQUE INDEX "DonationMethod_key_key" ON "DonationMethod"("key");