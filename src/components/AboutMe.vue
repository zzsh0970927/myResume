<template>
        <div id="aboutme" class="aboutme" @scroll="handleScroll">
            <div class="container">
                <div class="container-head">
                    <div class="container-title">
                        <h1 class="title">{{title}}</h1>
                        <h2 class="subTitle">{{aboutData.subTitle}}</h2>
                    </div>
                </div>
                <transition>
                <div class="container-body">
                    <div class="container-image">
                        <img :src="imgMe">
                    </div>
                    <div class="container-word">
                        <p 
                        class=""
                        v-for="(item,index) in aboutData.description"
                        :key="index"
                        >
                        {{item}}
                        </p>
                        <br/>
                        <div class="container-footer">
                            <span>
                                <img :src="imgPhone">
                                0976729263 
                            </span>                                                                                           
                            <span>
                                <img :src="imgMail">
                                zzsh0970927@gmail.com 
                            </span>
                            <span>
                                <a href="https://github.com/zzsh0970927" target="_blank"><img :src="imgGithub">https://github.com/zzsh0970927</a> 
                            </span>      
                        </div>     
                    </div>
                </div> 
                </transition>
            </div>
        </div>   
</template>

<style scoped>
@media (max-width: 540px){
    .aboutme {
        max-width: 400px;
    }
    .container-body {
        display: flex;
        align-items: center;
        flex-direction: column;
        padding: 1rem;
    }
    .container-word{
        padding-top: 1rem;
    }
}
img {
    display: block;
}
.aboutme {
    /* max-width: 1200px; */
    margin: 0 auto;
    padding: 2rem 0 2rem 0;

    position: relative;
    transform: translateX(150px);
    opacity: 0;
    transition: 1.5s all ease;
}
.container {
    display: flex;
    align-items: center;
    flex-direction: column;
}
.container-add{
    transform: translateX(0);
    opacity: 1;
}
.container-head{
    line-height: 3rem;
}
.container-body {
    display: flex;
    padding: 1rem;
}
.container-image, .container-word {
    width: 50%;
    width:350px;
    text-align: left;
    line-height: 1.5rem;
}
.title{
    font-size: 3rem;
}
.subTitle{
    font-size: 1.5rem;
    font-weight: bold;
}
.container-footer{
    display: flex;
    flex-direction: column;
}
.container-footer img{
    display: inline-block;
    margin-right: 0.5rem;
}
.container-footer span{
    padding: 0.25rem;
}
.container-footer a{
    text-decoration: none;
    color: #2c3e50;
}
</style>

<script>
import ImgMe from '@/assets/images/kevin2022.png'
import ImgPhone from '@/assets/images/phone.png'
import ImgMail from '@/assets/images/mail.png'
import ImgGithub from '@/assets/images/github.png'
import aboutData from '../data/about.json'

export default {
    name: 'AboutMe',
    props: ['title','subTitle'],
    data () {
        return {
            imgMe: ImgMe,
            imgPhone: ImgPhone,
            imgMail: ImgMail,
            imgGithub: ImgGithub,  
            aboutData ,
            // isShow: true        
        }
    },
    mounted () {
        window.addEventListener('scroll',this.handleScroll)
    },
    methods: {
        handleScroll() {
            const navContainer = document.querySelector('.aboutme');
            const windowHeight = window.innerHeight;
            const elementTop = navContainer.getBoundingClientRect().top;
            if (elementTop < windowHeight) {
                navContainer.classList.add('container-add')
            } 
        }
    }
}
</script>

