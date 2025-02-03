<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home - Fashion Finesse</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<div class="home-bg">

<section class="home">

   <div class="swiper home-slider">
   
   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/slideImage01.png" alt="">
         </div>
         <div class="content">
            <span>Elevate Your Style</span>
            <h3>Embrace Confidence!</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/slideImage02.png" alt="">
         </div>
         <div class="content">
         <span>Upto 20% Off</span>
            <h3>For all items</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/slideImage03.png" alt="">
         </div>
         <div class="content">
         <span>Hot promotions</span>
            <h3>Fashion Collection</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

   </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

</div>



<section class="category">

   <h1 class="heading">shop by category</h1>

   <div class="swiper category-slider">

   <div class="swiper-wrapper">

   <a href="category.php?category=dress" class="swiper-slide slide">
      <img src="images/category1.jpg" alt="">
      <h3>Dresses</h3>
   </a>

   <a href="category.php?category=shirt" class="swiper-slide slide">
      <img src="images/category2.jpg" alt="">
      <h3>Shirts</h3>
   </a>

   <a href="category.php?category=short" class="swiper-slide slide">
      <img src="images/category3.jpg" alt="">
      <h3>Shorts</h3>
   </a>

   <a href="category.php?category=jeans" class="swiper-slide slide">
      <img src="images/category4.jpg" alt="">
      <h3>Jeans</h3>
   </a>

   <a href="category.php?category=shoe" class="swiper-slide slide">
      <img src="images/category5.jpg" alt="">
      <h3>Shoes</h3>
   </a>

   <a href="category.php?category=backpack" class="swiper-slide slide">
      <img src="images/category6.jpg" alt="">
      <h3>Backpacks</h3>
   </a>

   <a href="category.php?category=blouse" class="swiper-slide slide">
      <img src="images/category7.jpg" alt="">
      <h3>Blouses</h3>
   </a>

   <a href="category.php?category=skirt" class="swiper-slide slide">
      <img src="images/category8.jpg" alt="">
      <h3>Skirts</h3>
   </a>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

<section class="banner">
   <img src="images/Banner02.jpg" alt="" style="padding:2rem; max-width: 1200px; margin:0 auto;">  
   <img src="images/Banner03.jpg" alt="" style="padding:2rem; max-width: 1200px; margin:0 auto;">
</section>

<section class="home-products">

   <h1 class="heading">New Arrivals</h1>

   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` LIMIT 6"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form action="" method="post" class="swiper-slide slide">
      <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
      <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button>
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price"><span>$</span><?= $fetch_product['price']; ?></div>
         <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
      </div>
      <input type="submit" value="add to cart" class="btn" name="add_to_cart">
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products added yet!</p>';
   }
   ?>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>


<section class="banner">
   <img src="images/Banner01.png" alt="" style="padding:2rem; max-width: 1200px; margin:0 auto;">
</section>





<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".home-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
});

 var swiper = new Swiper(".category-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
         slidesPerView: 2,
       },
      650: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 4,
      },
      1024: {
        slidesPerView: 5,
      },
   },
});

var swiper = new Swiper(".products-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
        slidesPerView: 2,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>