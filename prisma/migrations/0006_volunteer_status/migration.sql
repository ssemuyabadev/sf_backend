-- Extend volunteer application workflow and allow submissions without email
ALTER TYPE "ApplicationStatus" ADD VALUE IF NOT EXISTS 'REPLIED';
ALTER TYPE "ApplicationStatus" ADD VALUE IF NOT EXISTS 'ARCHIVED';
ALTER TABLE "VolunteerApplication" ALTER COLUMN "email" DROP NOT NULL;
