-- CreateTable
CREATE TABLE `Pool` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `hashrateTHs` DOUBLE NOT NULL,
    `activeWorkers` INTEGER NOT NULL,
    `rejectRate` DOUBLE NOT NULL,
    `status` ENUM('ONLINE', 'DEGRADED', 'OFFLINE') NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
