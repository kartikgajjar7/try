-- AlterTable
ALTER TABLE "todo" ADD COLUMN     "readerId" INTEGER;

-- CreateTable
CREATE TABLE "reader" (
    "id" SERIAL NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,

    CONSTRAINT "reader_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "reader_email_key" ON "reader"("email");

-- AddForeignKey
ALTER TABLE "todo" ADD CONSTRAINT "todo_readerId_fkey" FOREIGN KEY ("readerId") REFERENCES "reader"("id") ON DELETE SET NULL ON UPDATE CASCADE;
