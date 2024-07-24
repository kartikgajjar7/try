import { PrismaClient } from "@prisma/client/edge"
const prisma = new PrismaClient()
const inseruser = async (username:string , password: string , firstname : string ,lastname:string) => {
  const res = await prisma.user.create({
    data :{
      email:username
      password,
    }
  })
}
