/*
  Warnings:

  - You are about to drop the column `authUserId` on the `Product` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[authUserId]` on the table `Customer` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Product_authUserId_key";

-- AlterTable
ALTER TABLE "Customer" ADD COLUMN     "authUserId" TEXT;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "authUserId";

-- CreateIndex
CREATE UNIQUE INDEX "Customer_authUserId_key" ON "Customer"("authUserId");
