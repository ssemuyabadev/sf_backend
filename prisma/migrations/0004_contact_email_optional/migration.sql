-- Allow contact messages without an email address
ALTER TABLE "ContactMessage" ALTER COLUMN "email" DROP NOT NULL;
