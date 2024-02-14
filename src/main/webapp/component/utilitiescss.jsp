<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- custom css -->
<link rel="stylesheet" href="/component/maincss.jsp" />
<link rel="stylesheet" href="/component/utilitiescss.jsp" />

<!-- normalize.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<style>/* utilities classes */
.container{
    margin: 0 auto;
    padding-right: 16px;
    padding-left: 16px;
    max-width: calc(1273px - 32px);
}

/* text stylings and colors */
.text{
    color: var(--clr-gray);
    mix-blend-mode: normal;
    font-weight: 300;
    font-style: normal;
}
.text-blue{color: var(--clr-blue);}
.text-black{color: var(--clr-black);}
.text-white{color: var(--clr-white);}
.text-gray{color: var(--clr-gray);}
.text-dark-purple{color: var(--clr-dark-purple);}

.text-uppercase{text-transform: uppercase;}
.text-capitalize{text-transform: capitalize;}
.text-lowercase{text-transform: lowercase;}
.text-center{text-align: center;}
.text-start{text-align: left;}
.text-end{text-align: right;}
.text-justify{text-align: justify;}
.text-nowrap{white-space: nowrap;}

/* backgrounds colors */
.bg-transparent{background-color: transparent;}
.bg-white{background-color: var(--clr-white);}
.bg-black{background-color: var(--clr-black);}
.bg-blue{background-color: var(--clr-blue);}
.bg-gray{background-color: var(--clr-gray);}
.bg-dark-purple{background-color: var(--clr-dark-purple);}

.op-01{opacity: 0.1;}
.op-02{opacity: 0.2;}
.op-03{opacity: 0.3;}
.op-04{opacity: 0.4;}
.op-05{opacity: 0.5;}
.op-06{opacity: 0.6;}
.op-07{opacity: 0.7;}
.op-08{opacity: 0.8;}
.op-09{opacity: 0.9;}

/* font weights */
.fw-3{font-weight: 300;}
.fw-4{font-weight: 400;}
.fw-5{font-weight: 500;}
.fw-6{font-weight: 600;}
.fw-7{font-weight: 700;}
.fw-8{font-weight: 800;}
.fw-9{font-weight: 900;}

/* display */
.d-block{display: block;}
.d-inline{display: inline;}
.d-inline-block{display: inline-block;}
.d-flex{display: flex;}
.d-inline-flex{display: inline-flex;}
.d-grid{display: grid;}
.d-none{display: none;}

/* flex */
.justify-content-start{justify-content: flex-start;}
.justify-content-end{justify-content: flex-end;}
.justify-content-center{justify-content: center;}
.align-items-center{align-items: center;}
.align-items-stretch{align-items: stretch;}
.align-items-end{align-items: flex-start;}
.align-items-start{align-items: flex-start;}
.align-items-baseline{align-items: baseline;}
.flex-column{flex-direction: column;}
.flex-row{flex-direction: row;}
.flex-wrap{flex-wrap: wrap;}

/* vertically and horizontally centered */
.flex-center{
    display: flex;
    align-items: center;
    justify-content: center;
}
.justify-content-between{justify-content: space-between;}

/* buttons */
.btn{
    min-width: 200px;
    height: 56px;
    border-radius: 54px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-weight: 700;
    font-size: 18px;
    color: var(--clr-white);
    transition: var(--transition-default);
}

.btn:hover{
    color: var(--clr-white);
    background-color: #1472f4;
    box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;
}
.btn-primary{
    background-color: var(--clr-blue);
}
.btn-primary-outline{
    border: 1.4px solid var(--clr-blue);
    color: var(--clr-blue);
}
.btn-secondary{
    background-color: var(--clr-white);
    color: var(--clr-blue);
}
.btn-white-outline{
    color: var(--clr-white);
    border: 1.4px solid var(--clr-white);
}
.btn-white-outline:hover{
    background-color: var(--clr-white);
    color: var(--clr-blue);
}

/* title */
.title-box .title-box-name{
    font-weight: 700;
    font-size: 36px;
}
.title-box .title-separator{
    height: 2px;
    background-color: var(--clr-black);
    width: 56px;
    margin-top: 10px;
    margin-bottom: 33px;
}

/* margin auto */
.mx-auto{
    margin-right: auto;
    margin-left: auto;
}

@media screen and (max-width: 992px){
    .title-box .title-box-name{
        font-size: 32px;
    }
}

.resize-animation-stopper *{
    animation: none!important;
    transition: none!important;
}
</style>