<!--
*** Using markdown "reference style" links for readability.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
<img style="" src="images/logo/logo-with-background.png" alt="Logo" width="100%" height="100%">



  <h3 align="center">Shoes World</h3>

  <p align="center">
  Shoes World is your go-to online shop for the latest trainers. <br>Discover a wide range of trainers for every style, from classic to sporty, all at your fingertips. Our curated collection makes it easy to find your perfect pair. Enjoy real-time updates on stock and new arrivals, ensuring you always stay ahead of the trend.
    <br />
    <a href="https://github.com/desi109/online-shoes-shop"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/desi109/online-shoes-shop/issues">Report Bug</a>
    .
    <a href="https://github.com/desi109/online-shoes-shop/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
Shoes World is a premier e-commerce platform dedicated exclusively to trainers and sneakers. Our shop offers a diverse selection of the latest trainers, catering to every style and taste. Whether you're a sneaker enthusiast or just looking for a comfortable pair of trainers, Shoes World has you covered.

Our platform makes it easy to browse, search, and buy your favorite trainers from the comfort of your home. With detailed product descriptions, high-quality images, and customer reviews, you'll have all the information you need to make the right choice. We also provide a seamless checkout process, allowing you to add items to your cart, adjust quantities, and choose your preferred payment method.

The app has a minimalistic design and it is easy to be used by everyone.

On http://localhost:4200/home, there is the start page. It has welcome information with a logo, a simple navigation bar, and a footer with contacts. 
![product-screenshot-home-page]

There is a navigation bar with buttons for ```Sign Up``` and ```Sign In```. 

 http://localhost:4200/register
![product-screenshot-sign-up-page]

http://localhost:4200/login
![product-screenshot-sign-in-page]

Man Shoes: http://localhost:4200/category/0
![product-screenshot-category-man]

Woman Shoes: http://localhost:4200/product/1
![product-screenshot-category-women]

Select size: http://localhost:4200/product/C0001
![product-screenshot-category-shoe-select-size]

The application has two views for the administrators (employees and manager) and for the customers. Credentials for login are:
```
Email: employee1@email.com
Password: 123

Email: manager1@email.com
Password: 123

Email: customer1@email.com
Password: 123

Email: customer2@email.com
Password: 123
```



### Built With

* [Spring Boot](https://spring.io/projects/spring-boot)
* [PostgreSQL](https://www.postgresql.org/)
* [Angular](https://angular.io/)



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.


### Installation

1. Clone the repo:
   ```sh
   git clone https://github.com/desi109/online-shoes-shop.git 
   ```

2. Open the project backend in IDE. Start the it from `OnlineShopTuApplication.java` class.
   ```sh
   cd online-shoes-shop/backend 
   ```

3. Create and connect the database:
   ```
   User: postgres
   Password: root

   Database: postgres
   ```
![set-up-database.png]

4. Insert the data into the database by executing the SQL script `src/main/resources/db/changelog/02_insert_data.sql`.

5. Start the frontend of the project:
   ```sh
   cd online-shoes-shop/frontend 
   ng serve
   ```
   It is running on ```localhost:4200```.

   To restart, first kill the process:
   ```sh
   kill -9 $(lsof -t -i:4200)   
   ```
   And run the previous command to start it again.

5. Everything is ready. Go to ```localhost:4200```. Enjoy!  😉


<!-- CONTACT -->
## Contact
Project Link: [https://github.com/desi109/online-shoes-shop](https://github.com/desi109/online-shoes-shop)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/desi109/online-shoes-shop.svg?style=for-the-badge
[contributors-url]: https://github.com/desi109/online-shoes-shop/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/desi109/online-shoes-shop.svg?style=for-the-badge
[forks-url]: https://github.com/desi109/online-shoes-shop/network/members
[stars-shield]: https://img.shields.io/github/stars/desi109/online-shoes-shop.svg?style=for-the-badge
[stars-url]: https://github.com/desi109/online-shoes-shop/stargazers
[issues-shield]: https://img.shields.io/github/issues/desi109/online-shoes-shop.svg?style=for-the-badge
[issues-url]: https://github.com/desi109/online-shoes-shop/issues
[product-screenshot-home-page]: images/screenshoots/screenshoot-home-page.png
[product-screenshot-sign-up-page]: images/screenshoots/screenshoot-sign-up-page.png
[product-screenshot-sign-in-page]: images/screenshoots/screenshoot-sign-in-page.png
[product-screenshot-category-man]: images/screenshoots/product-screenshot-category-man.png
[product-screenshot-category-women]: images/screenshoots/product-screenshot-category-women.png
[product-screenshot-category-shoe-select-size]: images/screenshoots/product-screenshot-category-shoe-select-size.png
[set-up-database.png]: images/screenshoots/set-up-database.png