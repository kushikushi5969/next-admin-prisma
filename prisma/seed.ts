import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  // Node.jsの組み込みfetchを使用
  const response = await fetch('https://cc-moola.com/creditcard/wp-json/wp/v2/items')
  const data = await response.json()

  // 取得したデータの各項目をデータベースに挿入
  for (const credit_card of data) {
    await prisma.credit_card.create({
      data: {
        // モデルのフィールドに合わせてデータをマッピング
        wp_id: credit_card.id,
        name: credit_card.title,
      },
    })
  }
}

main()
  .catch((e) => {
    console.error(e)
    process.exit(1)
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
