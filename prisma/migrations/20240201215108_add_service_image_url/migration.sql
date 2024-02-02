/*
  Warnings:

  - You are about to drop the column `barbershopId` on the `Booking` table. All the data in the column will be lost.
  - Added the required column `babershopId` to the `Booking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Booking` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Booking" DROP CONSTRAINT "Booking_barbershopId_fkey";

-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "barbershopId",
ADD COLUMN     "babershopId" TEXT NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL,
ALTER COLUMN "date" SET DATA TYPE TIMESTAMP(3);

-- AddForeignKey
ALTER TABLE "Booking" ADD CONSTRAINT "Booking_babershopId_fkey" FOREIGN KEY ("babershopId") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
