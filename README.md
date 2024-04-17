# rage-math-3d-React



## Package Anatomy

This repository has three `package.json` files:

- `rage-math-3d-react/server/package.json` server dependencies and scripts
- `rage-math-3d-react/client/package.json` client dependencies and scripts
- `rage-math-3d-react/package.json` deployment & development scripts


## To Install for Local Development:

1. **Install Postgresql:** If it is not already installed, you'll need to install `postgres` as our database. On a Mac, we recommend installing `postgres` with Homebrew:

    ```bash
    > brew update
    > brew install postgresql
    ```

1. **Bootstrapping the database:** Create a database cluster and start Postgres 

    ```bash
    # creates a new database cluster
    > initdb /usr/local/var/postgres
    # starts postgres
    > pg_ctl -D /usr/local/var/postgres start
    # create user rage-math-3d_user and database rage-math-3d
    > psql -d postgres -f server/migrations/create_database.sql
    # create schema
    > psql -U rage-math-3d_user -d rage-math-3d -f server/migrations/database_setup.sql
    ```

1. **Set Database Connection:** Create a `.env` file in the `server/` directory to set `DATABASE_URL` database connection environment variable. For local development, just copy the template:

    ```bash
    > cp server/dotenv_template server/.env
    ```

1. **Install Dependencies:** Clone the git repo and `cd` to package root, then run:

    ```bash
    > npm install
    ```

    which installs both client and server dependencies.


1. **Start Server & Client:** In a new terminal window, start the server:

    ```bash
    > npm run start:dev:server
    ```

    and, in a third terminal window, start the client app:

    ```bash
    > npm run start:dev:client
    ```

The rage-math-3d-react app is now being served on `http://localhost:3000/`.
