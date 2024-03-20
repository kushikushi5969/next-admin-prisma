/*
  Warnings:

  - Added the required column `name` to the `credit_card` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `credit_card` ADD COLUMN `name` VARCHAR(200) NOT NULL;
