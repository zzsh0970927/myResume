<template>
    <div id="kvtyper" class="kvtyper" :style="{backgroundImage: 'url(' + imgPicBg + ')'}">
        <div class="container">
            <div class="table-cell text-center">
                <div class="container inner">
                    <div class="inner-title">
                        <h2 class="title">{{title}}</h2>
                    </div>
                    <div class="inner-description">
                        <h3 class="title-description">I am a front-end developer travel and sports enthusiast</h3>
                    </div>
                    <a href="#about" class="scroll home-s-btn hor-center"><span class="dot center"></span></a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import ImgPicBg from '../assets/images/header-bg.jpg'
import ImgName from '../assets/images/logo-kevin2.png'

export default {
    name: 'KVTyper',
    props: ['title'],
    components: {},
    data () {
        return {
            imgPicBg: ImgPicBg,
            imgName: ImgName,
            contact: [
                {
                    icon: 'mobile-alt',
                    data: '0976729263'
                },
                {
                    icon: 'envelope',
                    data: 'zzsh0970927@gmail.com'
                }
            ],
            worksList: [
                {
                    iconName: 'github',
                    link: 'https://github.com/zzsh0970927'
                },
                {
                    iconName: 'github-alt',
                    link: 'https://zzsh0970927.github.io/'
                }
            ]
        }
    }
}
</script>

<style scope>
@media (max-width: 540px){
    h2{
        font-size: 1.5rem;
    }
    h3{
        font-size: 0.75rem;
    }
}

.kvtyper{
    margin: 0px;
    padding: 0px; 
    width: 100%;
    height: 100vh;
    max-height: 100vh;
    background-size: cover;
    background-position: center;
    top: 0;
    left: 0;  
    z-index: 1;
}
.vue-typer .custom.char.typed {
    color: #bfbfbf;
}
.inner-title{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    color: azure;
    font-size: 3rem;
    width: 380px;
}
.inner-description{
    position: absolute;
    left: 50%;
    top: 60%;
    transform: translate(-50%,-50%);
    color: azure;
    font-size: 1.5rem;
}
.title-description{
    margin: 0 auto;
    white-space: nowrap;
    overflow: hidden;
    animation: description 7.5s infinite steps(53, end);
}
@keyframes description{
    0%{
        width: 1ch;
    }
    100%{
        width: 53ch;
    }
}
</style>
