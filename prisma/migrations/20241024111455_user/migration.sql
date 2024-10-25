/*
  Warnings:

  - Changed the type of `category` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "CategoryEnum" AS ENUM ('Clothes', 'Murti', 'Tilak', 'Accessories');

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "category",
ADD COLUMN     "category" "CategoryEnum" NOT NULL;

-- DropEnum
DROP TYPE "CatogoryEnum";
