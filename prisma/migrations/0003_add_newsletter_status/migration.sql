-- CreateEnum
CREATE TYPE "NewsletterStatus" AS ENUM ('NEW', 'APPROVED', 'DECLINED');

-- AlterTable
ALTER TABLE "NewsletterSubscriber"
ADD COLUMN "status" "NewsletterStatus" NOT NULL DEFAULT 'NEW',
ADD COLUMN "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
