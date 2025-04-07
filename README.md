# NestJS Dockerized PostgreSQL Project

<p align="center">
  <a href="http://nestjs.com/" target="blank">
    <img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" />
  </a>
</p>



<p align="center">
  A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.
</p>

<p align="center">
  <a href="https://www.npmjs.com/~nestjscore" target="_blank">
    <img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" />
  </a>
  <a href="https://www.npmjs.com/~nestjscore" target="_blank">
    <img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" />
  </a>
  <a href="https://www.npmjs.com/~nestjscore" target="_blank">
    <img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" />
  </a>
</p>

## Description

This repository demonstrates how to set up a **NestJS application** with **PostgreSQL** using **Docker**.  
The tutorial associated with this project is available on [thecodemood YouTube channel](https://www.youtube.com/@thecodemood).

## Features

- NestJS with TypeScript
- PostgreSQL with Docker
- TypeORM for database management
- Health checks with `pg_isready`
- Production-ready `Dockerfile`

---

## Installation

Clone the repository:

```bash
git clone https://github.com/your-repo/nestjs-docker.git
cd nestjs-docker

Install dependencies:
npm install



Create a .env file and define the required environment variables:

POSTGRES_USER=yourusername
POSTGRES_PASSWORD=yourpassword
POSTGRES_DB=yourdatabase
