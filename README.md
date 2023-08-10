# Turbo Search app

In this application, the user has a list of products. Which are listed and there's an input search bar, where the user can search an item by typing on it.
### The search bar has the following functionality

- While typing after a set time, the app looks in the database products for words typed by the user
- Searches omit symbols, which means if a user types a `good product?` it will search for **good products**
- Searches are saved on the database search_queries table when a `?` it's at the end of the word typed by the user
- Each query saved on the database it's saved by the user that's logged in, so **do not blend** different queries and show good analytics!

This app was created with Rails, including Devise for authentication and CanCanCan for authorizations

## Live Version

[Avaible Soon]()

## Built With:

- Ruby on Rails
- SASS
- PostgreSQL
- Devise
- CanCanCan

Prerequisites

- Ruby 3.1.2 or newer
- Rails 7.0.4 or newer
- Git
- NPM
- PostgreSQL
- Modern web browser

## Getting Started
- To get a local copy of this project clone this repository or download the Zip folder:
git clone https://github.com/BregornOriginal/turbo-search.git

- To get started, In the root directory run:
gem install bundler

- Then run:
bundle install

- Run ruby on rails app in the Command Line:
rails s

- Then browse http://localhost:3000

### Usage

To edit this project:

- Open the repository you cloned with a code editor that you like.

- Edit the code as you want.

## Author:

👤 **@BregornOriginal**

- GitHub: [![GitHub Badge](https://img.shields.io/badge/-BregornOriginal-white?logo=GitHub&logoColor=181717&style=plastic)](https://github.com/BregornOriginal)

- Twitter: [![Twitter Badge](https://img.shields.io/badge/-Bregorn-white?logo=Twitter&logoColor=1DA1F2&style=plastic)](https://twitter.com/Bregorn)

- LinkedIn: [![LinkedIn Badge](https://img.shields.io/badge/-JulioGagliardi-white?logo=LinkedIn&logoColor=1DA1F2&style=plastic)](https://www.linkedin.com/in/julio-gagliardi/)


## :star2: Show your support

Give me a :star: if you like my project!

## :pencil: License

This project is [MIT](https://github.com/BregornOriginal/turbo-search/blob/main/LICENSE) licensed.
