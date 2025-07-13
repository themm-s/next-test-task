/*
  Warnings:

  - Added the required column `feePercent` to the `Pool` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last24hRevenueBTC` to the `Pool` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location` to the `Pool` table without a default value. This is not possible if the table is not empty.
  - Added the required column `uptimePercent` to the `Pool` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `pool` ADD COLUMN `feePercent` DOUBLE NOT NULL,
    ADD COLUMN `last24hRevenueBTC` DOUBLE NOT NULL,
    ADD COLUMN `location` VARCHAR(191) NOT NULL,
    ADD COLUMN `uptimePercent` DOUBLE NOT NULL;
