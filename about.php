<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About Us</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/a1.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>At Fashion Finesse, we're not just another fashion retailer; we're your personal style companion on a journey of self-expression and confidence. With a passion for all things fashion, we've curated a diverse selection of clothing, accessories, and footwear to help you redefine your style effortlessly. Our commitment goes beyond trends and labels; it's about empowering you to be the best-dressed version of yourself. Whether you're seeking timeless classics, the latest runway trends, or a unique fusion of both, Fashion Finesse is your one-stop destination.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      

      <div class="content">
         <p>Our mission is simple: to make fashion accessible, convenient, and inspiring. We believe that style is not about following the crowd but creating your unique path. That's why we offer a user-friendly platform that lets you curate your own fashion journey, whether you're building a signature look or exploring the latest collections. Customer satisfaction is at the heart of everything we do. We provide secure payment options, convenient doorstep delivery, and an array of features to enhance your shopping experience. We're dedicated to safeguarding your personal information, ensuring your trust in us. Thank you for choosing Fashion Finesse as your fashion destination. We look forward to being part of your style story and helping you express your unique fashion finesse. Join us on this exciting fashion adventure!</p>
      </div>

      <div class="image">
         <img src="images/a2.jpg" alt="">
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">client's reviews</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/avatar-4.png" alt="">
         <p>"Absolutely love the trendy styles! Fast shipping and the quality is top-notch. Will be shopping here again!"</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>James Mitchell</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/avatar-5.png" alt="">
         <p>"Great experience! The sizing was accurate, and the clothes are even more beautiful in person. Happy customer!"</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Alex Reynolds</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/avatar-6.png" alt="">
         <p>"Impressed with the variety and the user-friendly website. Received compliments on my recent purchase. Highly recommend!"</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Emily Walker</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/avatar-4.png" alt="">
         <p>"Quick and easy shopping. The customer service team was responsive and helpful. Will definitely be a repeat customer."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Benjamin Foster</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/avatar-5.png" alt="">
         <p>"Love the affordable prices without compromising on style. The fit guide was super helpful. Very satisfied with my order!"</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Samuel Thompson</h3>
      </div>



   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>