
<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- custom css -->
<link rel="stylesheet" href="/component/maincss.jsp" />
<link rel="stylesheet" href="/component/utilitiescss.jsp" />

<!-- normalize.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<style>
@import url('https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900;1,1000&display=swap');


:root{
    --clr-blue: #458ff6;
    --clr-black: #000;
    --clr-white: #fff;
    --clr-gray: #7d7987;
    --clr-dark-blue: #233348;
    --clr-dark-purple: #1f1534;
    --font-family-mulish: 'Mulish', sans-serif;
    --transition-default: all 300ms ease-in-out;
}

html{
    scroll-behavior: smooth;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    -webkit-text-size-adjust: 100%;
}

/* some resets & configuration */
*,
*::before,
*::after{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

ul, ol{
    list-style-type: none;
}
a{
    text-decoration: none;
    color: unset;
    transition: var(--transition-default);
}

a:focus, a:hover{
    color: unset;
}

img, picture, video, canvas, svg{
    max-width: 100%;
    display: block;
}
input, button, textarea, select{
    font: inherit;
    outline: 0;
}
h1, h2, h3, h4, h5, h6{
    overflow-wrap: break-word;
}
textarea{
    resize: none;
}
img, object, embed, video{
    max-width: 100%;
}

body{
    font-family: var(--font-family-mulish);
    line-height: 1.6;
    height: 100%;
    font-weight: 300;
}

button{
    background-color: transparent;
    border: none;
    cursor: pointer;
}
.page-wrapper{
    overflow: hidden!important;
}

/* header section  & navbar */
.header{
    position: relative;
    min-height: 100vh;
    background-color: var(--clr-blue);
}
.header *{
    color: var(--clr-white);
}
.navbar{
    padding: 50px 0 80px 0;
}
.brand-and-toggler{
    width: 100%;
}
.navbar-content{
    height: 41px;
}
.navbar-brand .brand-shape{
    width: 41px;
    height: 41px;
    border-radius: 50%;
    background-color: var(--clr-white);
    font-size: 26px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 700;
    margin-right: 12px;
    color: var(--clr-blue);
}

.navbar-brand .brand-text{
    color: var(--clr-white);
    font-size: 24px;
}
.nav-item{
    margin-left: 40px;
}
.nav-link{
    font-weight: 400;
    font-size: 18px;
}
.nav-link:hover{
    opacity: 0.9;
}
.nav-link.nav-active{
    position: relative;
    color: var(--clr-white);
    font-weight: 700;
    opacity: 1;
}
.nav-link.nav-active::after{
    content: "";
    position: absolute;
    bottom: -7px;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: var(--clr-white);
}
.navbar-show-btn{
    font-size: 24px;
    cursor: pointer;
}

.navbar-hide-btn{
    display: none;
    cursor: pointer;
    transition: var(--transition-default);
}
.navbar-hide-btn:hover{
    opacity: 0.8;
}
.element-one{
    position: absolute;
    top: calc(56px + 41px + 63px);
    left: 0;
}
.element-one img{
    width: 60px;
}

/* banner */
.banner-title{
    font-size: 48px;
    line-height: 1.160;
}
.banner-content{
    display: grid;
    column-gap: 78px;
    grid-template-columns: repeat(2, 1fr);
    align-items: center;
}
.banner-left .content-wrapper{
    max-width: 445px;
    margin-left: auto;
}
.banner-left .content-wrapper p{
    max-width: 340px;
}
.banner-left .text{
    margin-top: 25px;
    margin-bottom: 45px;
}
.btn {
    --fancy-button-gradient-0: #8d49fd;
    --fancy-button-gradient-50: #7f56f3;
    --fancy-button-gradient-100: #5691f3;
    --fancy-button-inner-shadow-top: rgba(233, 209, 255, 0.2);
    --fancy-button-inner-shadow-top-lg: rgba(9, 12, 60, 0.1);
    --fancy-button-inner-shadow-bottom: rgba(137, 222, 246, 0.3);
    --fancy-button-shine-top: #e9d1ff;
    --fancy-button-shine-bottom: #adfff9;
    font-family: 'Poppins';
    font-weight: 500;
    font-size: 15px;
    line-height: 21px;
    text-shadow: 0px 0.5px 0.5px rgba(0, 0, 0, 0.2);
    padding: 0;
    margin: 0;
    appearance: none;
    border: none;
    outline: none;
    overflow: hidden;
    position: relative;
    cursor: pointer;
    z-index: 1;
    border-radius: 25px;
    color: #fff;
    background-image: linear-gradient(to bottom, var(--fancy-button-gradient-0) 0%, var(--fancy-button-gradient-50) 50%, var(--fancy-button-gradient-100) 100%);
    box-shadow: 0px 4px 12px rgba(9, 12, 60, 0.15), 0px 2px 8px rgba(9, 12, 60, 0.15), 0px 1px 3px var(--fancy-button-inner-shadow-top-lg), inset 0px 1px 1px var(--fancy-button-inner-shadow-top), inset 0px -1px 3px var(--fancy-button-inner-shadow-bottom);
  }
  
  .btn:before, .btn:after {
    content: '';
    position: absolute;
    border-radius: inherit;
    will-change: transform;
  }
  
  .btn:before {
    left: 50%;
    transform: translateX(-50%);
    background-color: var(--fancy-button-shine-top);
    width: 96px;
    height: 6px;
    top: -3px;
    opacity: 0.6;
    filter: blur(6px);
    transition: opacity 0.25s;
  }
  
  .btn:after {
    inset: 0;
    background-size: cover;
    z-index: 2;
    opacity: 0.3;
    mix-blend-mode: overlay;
    pointer-events: none;
  }
  
  .btn span {
    display: block;
    padding: 12px 24px;
    border-radius: inherit;
    overflow: hidden;
    position: relative;
    background-image: linear-gradient(to bottom, var(--fancy-button-shine-top), transparent 8px);
    background-position: 0 -6px;
    background-repeat: no-repeat;
    z-index: 1;
  }
  
  .btn span:before, .btn span:after {
    content: '';
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    border-radius: 50%;
    background-color: var(--fancy-button-shine-bottom);
    transition: opacity 0.25s, transform 0.25s;
    will-change: transform;
  }
  
  .btn span:before {
    width: 92px;
    height: 8px;
    bottom: -4px;
    opacity: 0.75;
    filter: blur(6px);
  }
  
  .btn span:after {
    width: 112px;
    height: 1px;
    bottom: 0;
    opacity: 0.9;
    filter: blur(1px);
  }
  
  .btn:hover span:before {
    opacity: 0.8;
  }
  
  .btn:hover span:before {
    transform: translateX(-50%) scale(1.25);
  }
  
  .btn:hover span:after {
    opacity: 1;
  }


/* Media queries */
@media screen and (max-width: 1120px){
    .feedback-list .feedback-item{
        column-gap: 40px;
    }

    .footer-item:nth-child(1){
        padding-right: 0;
    }

    .footer-list{
        grid-template-columns: repeat(2, 1fr);
    }
}

@media screen and (max-width: 992px){
    .navbar .navbar-show-btn{
        display: block;
    }

    .navbar .navbar-hide-btn i{
        color: var(--clr-black);
    }

    .navbar-box{
        position: fixed;
        right: 0;
        top: 0;
        width: 280px;
        height: 100%;
        box-shadow: rgba(149, 157, 165, 0.4) 0px 8px 24px;
        z-index: 999;
        background-color: var(--clr-white);
        padding: 48px 32px 24px;
        transform: translateX(100%);
        transition: var(--transition-default);
    }

    .navbar-box-show{
        transform: translateX(0);
    }

    .navbar-box .nav-link{
        color: var(--clr-black);
        position: relative;
        padding-bottom: 8px;
    }

    .navbar-box .nav-link::after{
        content: "";
        position: absolute;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
        height: 1px;
        width: 0;
        background-color: var(--clr-blue);
        transition: var(--transition-default);
    }
    .navbar-box .nav-link:hover{
        color: var(--clr-blue);
    }
    .navbar-box .nav-link:hover::after{
        width: 100%;
    }
    .navbar-box .nav-link.nav-active{
        color: var(--clr-blue);
    }
    .navbar-box .nav-item{
        margin: 12px 0;
    }
    .navbar-box .navbar-nav{
        flex-direction: column;
    }
    .navbar-box .navbar-hide-btn{
        display: block;
        position: absolute;
        right: 16px;
        top: 16px;
        font-size: 24px;
    }

    /* banner */
    .banner-content{
        column-gap: 36px;
        grid-template-columns: repeat(1, 1fr);
    }
    .banner .banner-left .content-wrapper{
        max-width: 540px;
        margin-right: auto;
        margin-left: auto;
        text-align: center;
    }
    .banner-left .content-wrapper p{
        max-width: 100%;
    }
    .banner .banner-right{
        justify-content: center;
        margin-top: 40px;
        max-width: 480px;
        margin-right: auto;
        margin-left: auto;
    }

    /* services */
    .sc-services{
        padding-top: 80px!important;
        padding-bottom: 80px!important;
        position: relative;
        overflow: hidden;
    }

    .services-item{
        width: calc(50% - 37px);
    }

    .sc-services{
        padding-top: 120px;
        padding-bottom: 115.5px;
    }
    .services-shape{
        width: 70%;
        top: 340px;
    }

    /* grid one */
    .sc-grid-one, .sc-grid-two{
        padding: 100px 0;
    }

    .grid-content .content-wrapper{
        max-width: 600px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }
    .grid-content{
        grid-template-columns: repeat(1, 1fr);
    }
    .grid-content .title-box .title-separator{
        margin-left: auto;
    }
    .grid-content .grid-img{
        max-width: 480px;
        margin-right: auto;
        margin-left: auto;
        margin-bottom: 40px;
    }

    .sc-grid.sc-grid-two .grid-content .content-wrapper{
        max-width: 600px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }
    .sc-grid-two .grid-content .grid-text{
        width: 100%;
        margin-right: 0;
        margin-left: 0;
        margin-bottom: 60px;
    }

    /* feedback */
    .sc-feedback{
        padding: 120px;
    }
    .feedback-list .feedback-item{
        grid-template-columns: repeat(1, 1fr);
        padding: 32px;
    }
    .feedback-list .feedback-item .item-right{
        max-width: 100%;
        margin-top: 24px;
    }
    .feedback-list .owl-nav .owl-prev{
        margin-right: 200px;
    }
    .feedback-content .feedback-element{
        width: 40px;
        right: 5px;
        top: 5px;
    }
    .feedback-content .feedback-element-2{
        width: 50px;
        left: 0;
    }

    /* articles */
    .sc-articles{
        padding: 100px 0;
    }
    .articles-content .articles-item{
        width: calc(50% - 34px);
        overflow: hidden;
        margin: 17px;
    }
    .articles-shape{
        width: 50%;
    }
    .articles-element{
        top: 180px;
        width: 60px;
    }

    /* footer */
    .footer-element-1{
        width: 60px;
    }
    .footer-element-22{
        width: 60px;
        right: 0;
        top: -35px;
    }
}
body {
    overflow: hidden;
}

@media screen and (max-width: 768px){
    /* navbar */
    .element-one img{
        width: 40px;
    }
    /* grid one */
    .sc-grid-one, .sc-grid-two{
        padding: 80px 0;
    }

    /* feedback */
    .sc-feedback{
        padding: 80px 0;
    }
    .feedback-list .feedback-item{
        padding-right: 20px;
        padding-left: 20px
    }
    .feedback-list .feedback-item .item-left{
        flex-direction: column;
    }
    .feedback-list .feedback-item .item-left .item-info{
        margin-left: 0;
        text-align: center;
        margin-top: 16px;
    }
    .feedback-list .owl-nav .owl-prev{
        margin-right: 120px;
    }

    /* articles */
    .sc-articles{
        padding: 80px 0;
    }

    /* footer */
    .footer-list{
        grid-template-columns: repeat(1, 1fr);
        text-align: center;
    }
    .footer-list .navbar-brand{
        justify-content: center;
    }
    .footer-list .footer-item:nth-child(1){
        max-width: 450px;
        margin-right: auto;
        margin-left: auto;
    }
}

@media screen and (max-width: 678px){
    .sc-services .services-list{
        margin-right: 0;
        margin-left: 0;
    }

    .services-list .services-item{
        width: 100%;
        margin: 12px 0;
    }

    .articles-list .articles-item{
        width: calc(100% - 34px);
        overflow: hidden;
        max-width: 100%;
    }
}

@media screen and (max-width: 576px){
    .services-item{
        text-align: center;
    }
    .services-item .item-icon img{
        margin-right: auto;
        margin-left: auto;
    }
}

@media screen and (max-width: 450px) {
    .navbar-box {
        width: 100%;
    }
}

</style>