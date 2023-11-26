import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

const reset = async () => {
  await prisma.user.deleteMany()
  await prisma.$queryRaw`ALTER TABLE user AUTO_INCREMENT = 1;`
}

const userSeed = async () => {
  await prisma.user.create({
    data: {
      id: 'kp_8d99073c8e384e568c0254ebaed37002',
      email: 'qwerfcxzas1@gmail.com',
    },
  })
}

;(async function main() {
  await reset()
  console.log('reset done')
  console.log('Start seeding ...')
  await userSeed()
  console.log('Seeding finished ...')
})()
