<template>
    <div id="specialexperience" class="specialexperience" @scroll="handleScroll">
        <div class="container">
            <div class="container-head">
                <div class="container-title">
                    <h1 class="title">{{title}}</h1>
                    <h2 class="subTitle">{{subTitle}}</h2>
                </div>
            </div>
            <div class="container-body">
                <div class="container-image">
                    <img class="imgFuen12" :src="imgFuen12">
                </div>
                <div class="container-word">
                    <ul class="ul-list">
                        <li
                          class="item"
                          v-for="item in specialExperience" 
                          :key="item.index"       
                        >
                        <h3 class="item-h3">{{item.title}}</h3>
                        <h4 class="item-h4">{{item.during}}</h4>
                        <hr/>
                        <ul class="ul-list--inner">
                            <li
                              class="content"
                              v-for="content in item.list"
                              :key="content.index">
                              {{content}}                            
                            </li>
                        </ul>
                        </li>                 
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import ImgFuen12 from '@/assets/images/FUEN12.jpg'

export default {
    name: 'SpecialExperiences',
    props: ['title','subTitle'],
    data () {
        return {
            imgFuen12: ImgFuen12,            
            specialExperience: [
                {                    
                    title: '資策會 - 全端工程師就業養成班',
                    during: '2020/8-2020/11',
                    list: [
                        '學習前端技術及框架 : HTML5、CSS3、JavaScript、JQuery、Bootstrap、Vue.js',
                        '學習後端技術及資料庫 : C#、ASP.NET MVC、Web APIs、Node.js、MSSQL',
                        '依課程內容完成小作品，例如 : 網頁切版、計算機等等',
                        '和組員一同完成畢業專題 - 電商平台',
                        '邀請廠商來資策會現場報告專題內容',
                        '報告完現場就業媒合'
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
            const navContainer = document.querySelector('.specialexperience');
            const windowHeight = window.innerHeight;
            const elementTop = navContainer.getBoundingClientRect().top;
            if (elementTop < windowHeight +125) {
                navContainer.classList.add('container-add')
            } 
        }
    }
}
</script>

<style scoped>
.specialexperience{
    /* max-width: 1200px; */
    margin: 0%;
    padding: 2rem;

    position: relative;
    transform: rotateX(180deg) scale(0);
    opacity: 0;
    transition: 1.5s all ease;
}
.container{
    display: flex;
    align-items: center;
    flex-direction: column;  
}
.container-add{
    transform: rotateX(0deg) scale(1);
    opacity: 1;
}
.container-body{
    display: flex;     
}
.container-image, .container-word{
    padding: 1rem;
    text-align: left;
    line-height: 1.5rem;
}
.imgFuen12{
    width: 635px;
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
h4{
    font-size: 1rem;
    font-weight: bold;
    line-height: 2rem;
}
</style>