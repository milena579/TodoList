/*
  Warnings:

  - You are about to drop the column `createdAt` on the `user` table. All the data in the column will be lost.
  - You are about to drop the `_itemservicotoordemdeservico` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cliente` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `itemservico` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ordemdeservico` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `servico` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `veiculo` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `_itemservicotoordemdeservico` DROP FOREIGN KEY `_ItemServicoToOrdemdeServico_A_fkey`;

-- DropForeignKey
ALTER TABLE `_itemservicotoordemdeservico` DROP FOREIGN KEY `_ItemServicoToOrdemdeServico_B_fkey`;

-- DropForeignKey
ALTER TABLE `itemservico` DROP FOREIGN KEY `ItemServico_servicoId_fkey`;

-- DropForeignKey
ALTER TABLE `ordemdeservico` DROP FOREIGN KEY `OrdemdeServico_clienteId_fkey`;

-- DropForeignKey
ALTER TABLE `ordemdeservico` DROP FOREIGN KEY `OrdemdeServico_veiculoId_fkey`;

-- DropForeignKey
ALTER TABLE `veiculo` DROP FOREIGN KEY `Veiculo_clienteId_fkey`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `createdAt`,
    ADD COLUMN `password` VARCHAR(191) NOT NULL;

-- DropTable
DROP TABLE `_itemservicotoordemdeservico`;

-- DropTable
DROP TABLE `cliente`;

-- DropTable
DROP TABLE `itemservico`;

-- DropTable
DROP TABLE `ordemdeservico`;

-- DropTable
DROP TABLE `servico`;

-- DropTable
DROP TABLE `veiculo`;

-- CreateTable
CREATE TABLE `Task` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `userId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Task` ADD CONSTRAINT `Task_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
