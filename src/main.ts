import 'reflect-metadata';import { ValidationPipe } from '@nestjs/common';import { NestFactory } from '@nestjs/core';import * as cookieParser from 'cookie-parser';import { AppModule } from './app.module';

async function bootstrap(){
  const app=await NestFactory.create(AppModule);
  app.use(cookieParser());

  app.enableCors({
    origin:true,
    credentials:true,
    methods:['GET','HEAD','PUT','PATCH','POST','DELETE','OPTIONS'],
    allowedHeaders:['Content-Type','Authorization','Accept','Origin','X-Requested-With'],
  });

  app.useGlobalPipes(new ValidationPipe({whitelist:true,transform:true}));
  await app.listen(process.env.PORT||4000);
}
bootstrap();