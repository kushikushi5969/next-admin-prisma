-- CreateTable
CREATE TABLE `review` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `credit_id` INTEGER NOT NULL,
    `job` VARCHAR(20) NOT NULL,
    `age` VARCHAR(20) NOT NULL,
    `sex` VARCHAR(20) NOT NULL,
    `star` DECIMAL(2, 1) NOT NULL,
    `content` VARCHAR(200) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `review` ADD CONSTRAINT `review_credit_id_fkey` FOREIGN KEY (`credit_id`) REFERENCES `credit_card`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
