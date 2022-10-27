<template>
    <div id="work" class="work" @scroll="handleScroll">
       <div class="container"></div>
       <div class="work_list">
        <h1 class="title">{{title}}</h1>
        <h2 class="subTitle">{{subTitle}}</h2>        
               <div class="row mx-auto">
                   <li class="col-md-4 p4 wow slideInUp" v-for="list in works" :key="list.index"
                       data-wow-duration="0.5s" data-wow-delay="0.5s">
                       <div class="view">
                            <a class="item" :href="list.link" target="_blank">
                                <div class="img">
                                    <img :src="list.image" :alt="list.title">
                                </div>
                                <div class="description">
                                    <ul class="ul-list">
                                        <li class="item ul-list-item" v-for="listItem in list.description" :key="listItem.index">
                                            {{listItem}}                                                                           
                                        </li>
                                    </ul>
                                </div>
                            </a>
                            <a class="u-mobile-only btn-link" :href="list.link"></a>
                       </div>
                       <h3 class="text mt-3">{{list.title}}</h3>
                            <span class="mx-1 d-inline-block" v-for="(listItem,index) in list.tags" :key="listItem.index"> 
                                {{listItem}}{{(index + 1 != list.tags.length) ? ',' : ''}}
                            </span>
                   </li>
               </div>       
       </div>
    </div>
</template>

<script>
import ImgWork_myResume from '@/assets/images/works/myResume.png'
import ImgWork_MUJI from '@/assets/images/works/MUJI.png'
import ImgWork_shashamall from '@/assets/images/works/shashamall.png'

export default {
   name: 'Works',
   props: ['title','subTitle'],
   data () {
       return {
           works: [
               {
                   title: '我的履歷',
                   tags: ['Vue Cli 3','HTML','CSS3','JavaScript','JQuery','ES6'],
                   image: ImgWork_myResume,
                   link: 'https://zzsh0970927.github.io/myResume/',
                   description: [
                       '熟悉Vue.js 從學習寫履歷開始',
                       '學習如何使用Vue.js建置Project、Vue.js語法、ES6語法'
                   ]
               },
               {
                   title: '無印良品網頁刻板練習',
                   tags: ['HTML','CSS3','JavaScript'],
                   image: ImgWork_MUJI,
                   link: 'https://zzsh0970927.github.io/myMUJI/',
                   description: [
                       '用CSS、HTML做網頁刻板',
                       '以無印良品網站為模板的練習作品'
                   ]
               },
               {
                   title: '砂魚商城',
                   tags: ['JavaScript','JQuery','Bootstrap','ES6'],
                   image: ImgWork_shashamall,
                   link: 'http://shashamall.azurewebsites.net/',
                   description: [
                       '資策會畢業專題-電商平台',
                       '負責競標系統、聊天室及部分畫面排版'
                   ]
               }                                   
           ]
       }
   },
   mounted () {
        window.addEventListener('scroll',this.handleScroll)
    },
    methods: {
        handleScroll() {
            const navContainer = document.querySelector('.work');
            const windowHeight = window.innerHeight;
            const elementTop = navContainer.getBoundingClientRect().top;
            if (elementTop < windowHeight) {
                navContainer.classList.add('container-add')
            } 
        }
    }
}
</script>

<style scoped>
@media (max-width: 540px){
    .mx-auto{
        display: flex;
        align-items: center;
        flex-direction: column;
    }    
}
img{
    display: block;
    position: absolute;
    width: 100%;
    height: 100%;
    transform: .2s;    
}
.work{
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 0 2rem 0;

    position: relative;
    opacity: 0;
    transition: 1.5s all ease-in;
}
.container-add{
    opacity: 1;
}
.mx-auto{
    display: flex;   
}
.view{
    width: 330px;
    height: 492px;
    border: 10px solid #f2f2f2;
    position: relative;
    overflow: hidden;
    display: block;
    cursor: pointer;
    margin-bottom: 0.5rem;
}
.view:hover li{
    transform: translateY(70px);
    opacity: 1;
}
.description{
    position: absolute;
    text-align: center;
    width: 100%;
    height: 100%;
    opacity: 0;
    background-color: rgba(81, 87, 83, 0.7);
}
.description:hover{
    opacity: 1;
}

.slideInUp{
    margin: 25px;
    overflow: hidden;
}
.ul-list-item{
    text-align: left;
}
.title{
    font-size: 3rem;
    line-height: 3rem;
}
.subTitle{
    font-size: 1.5rem;
    line-height: 3rem;
    font-weight: bold;
}
h3{
    font-size: 1.25rem;
    font-weight: bold;
    line-height: 2rem;     
}
.d-inline-block{
    font-size: 1rem;
    font-weight: bold;
    line-height: 2rem;    
}
a{
    text-decoration: none;
    color: #2c3e50;
}
li{
    list-style: none;
}
.ul-list li{
    margin: 0;
    width: 100%;
    transform: translateY(-50px);
    padding: 10px;
    transition: all .3s ease-in-out;
    color: #f2f2f2;
    font-weight: bold;   
}

</style>