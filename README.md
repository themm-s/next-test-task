# Важно!
Поскольку в ТЗ было описано что нужен будет роут - я его сделал через папку app внутри app **НО** можно было сделать несколькими вариантами

1. Через `useEffect` сделать асинхронную функцию и сразу её вызывать.
- Почему плохо? Потому что в современных реалях в связке с NextJS чаще используются либо `ServerAction` либо Api Routes

2. Сделать через `Server Action`
- Почему не сделал? В ТЗ было чётко указано "Реализуй запрос на GET `/api/mining-pools`"

## Старт проекта
**Установка зависимостей**:

```bash
npm i
# or
npm ci
# or
yarn install
```

**Импорт** тестовых данных (Если нужно)

- Открыть `MySql`
- Экспортировать в БД `nextTestTask` файл nexttesttask.sql
- Создать .env в корне проекта и вписать следующее

```dotenv
DATABASE_URL="mysql://root@localhost:3306/nextTestTask"
```

**Создание** своих тестовых данных:

```bash
npx prisma studio # Запуск админки призмы
```

И там нажать кнопку "**Add record**"

Генерация `БД`:

```bash
npx prisma generate
```

Запуск проекта:

```bash
yarn dev
# or
npm run dev
```

Открываем [http://localhost:3000](http://localhost:3000) с помощью браузера

## Описание проекта

### Проект использует методологию проектировани FSD + NextJS

- [FSD + NextJS](https://feature-sliced.github.io/documentation/ru/docs/guides/tech/with-nextjs) - Про использование методологии вместе с `NextJS`
- [FSD](https://feature-sliced.github.io/documentation/ru/docs/get-started/overview) - Описание методологии.

## Стек проекта

- **NextJS (v15.3)**
- **MUI (v7.2)**
- **Prisma (v6.11)**
- **MySQL**


Спасибо за внимание!