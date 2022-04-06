/*
  Warnings:

  - A unique constraint covering the columns `[authUserId]` on the table `Product` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "authUserId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Product_authUserId_key" ON "Product"("authUserId");
