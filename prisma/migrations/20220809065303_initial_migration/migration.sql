-- CreateTable
CREATE TABLE `Dishes` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `category` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Dishes_title_key`(`title`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Ingredients` (
    `id` VARCHAR(191) NOT NULL,
    `counter` INTEGER NOT NULL AUTO_INCREMENT,
    `ingredient` VARCHAR(191) NOT NULL,
    `dishId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Ingredients_counter_key`(`counter`),
    UNIQUE INDEX `Ingredients_ingredient_key`(`ingredient`),
    INDEX `Ingredients_dishId_idx`(`dishId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Ingredients` ADD CONSTRAINT `Ingredients_dishId_fkey` FOREIGN KEY (`dishId`) REFERENCES `Dishes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
