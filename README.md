# Rock, Paper, Scissors
**Author: Francisco Olivares**

## Requirements
- Ruby 2.6.5
- Rails 6.0

## How to run it
1. Clone both [back-end](https://github.com/fco96/cachipun-api) and [front-end](https://github.com/fco96/cachipun-front) repositories.
2. Inside the **back-end** project install the project dependencies with
    ```
    bundle install
    ```
3. Create the database and migrations with
    ```
    rails db:create && rails db:migrate
    ```
4. After steps 3 and 4 are completed you can start the server with the next command:
    ```
    rails s -p 3001
    ```
    It is important that the server runs on the port `3001` because the **front-end** runs on the `3000`

5. Now start the **front-end** (instructions on its own [repo](https://github.com/fco96/cachipun-front)) and open your web browser on `http://localhost:3000/` and enjoy :) 
