-- CreateEnum
CREATE TYPE "SponsorStatus" AS ENUM ('NEW', 'REPLIED', 'ARCHIVED');

-- AlterTable
ALTER TABLE "SponsorEnquiry"
ADD COLUMN "status" "SponsorStatus" NOT NULL DEFAULT 'NEW',
ALTER COLUMN "email" DROP NOT NULL;
