<template>
    <div id="skill" class="skill" @scroll="handleScroll">
        <div class="container">
            <h2 class="title">{{title}}</h2>
            <h2 class="subTitle">{{subTitle}}</h2>
            <div class="row my-4">
                <div class="innerMy-4" v-for="item in skills" :key="item.index">
                    <div class="skill-item">
                        <div class="span-icon">
                            <span class="">
                                <img class="span-img" :src="item.icon"/>
                            </span>
                        </div>
                        <h3 class="h3-title">{{item.title}}</h3>
                        <p class="h3-p"></p>
                        <h4 class="h4-content">
                            <span class="h4-detail" v-for="(skillItem,index) in item.skillList" :key="skillItem.index">
                                {{skillItem}}{{(index + 1 != item.skillList.length) ? ', ' : ''}}
                            </span>                     
                        </h4>
                        <div class="skill-item-text">
                            <dl class="ul-list ul-list--none">
                                <dt class="item ul-list-item" v-for="listItem in item.info" :key="listItem.index">
                                    {{listItem}}
                                </dt>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import ImgFrontEnd from '@/assets/images/front-end.png'
import ImgRearEnd from '@/assets/images/rear-end.png'
import ImgDatabase from '@/assets/images/database.png'
import ImgOthers from '@/assets/images/others.png'
export default {
    name: 'Skills',
    props: {
        title: String,
        subTitle: String
    },
    data () {
        return {
            striped: true,
            animate: true,
            skills: [
                {
                    icon: ImgFrontEnd,
                    title: '????????????',
                    skillList: ['HTML','CSS','JavaScript','Vue.js','jQuery','Bootstrap'],
                    info: [
                        '?????? HTML???CSS???SCSS ???????????????????????? Bootstrap',
                        '?????? JavaScript???jQuery ???????????????',
                        '?????? Vue.js ????????????'
                    ]
                },
                {
                    icon: ImgRearEnd,
                    title: '????????????',
                    skillList: ['C#','.NET????????????','LINQ','ASP.NET MVC','Web APIs','Node.js'],
                    info: [
                        '?????? ASP.NET ?????????????????????',
                        '?????? Web APIs ??????????????????'
                    ]
                },
                {
                    icon: ImgDatabase,
                    title: '???????????????',
                    skillList: ['MSSQL'],
                    info: [
                        '?????? MSSQL ???????????????????????????',
                        '????????????(Stored Procedure)??????',
                        '?????????????????????????????????sp??????'
                    ]
                },
                {
                    icon: ImgOthers,
                    title: '??????',
                    skillList: ['Git','Webpack','Azure'],
                    info: [
                        '?????? Git ??????????????????',
                        '?????? Webpack???Azure ??????????????????'
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
            const navContainer = document.querySelector('.skill');
            const windowHeight = window.innerHeight;
            const elementTop = navContainer.getBoundingClientRect().top;
            if (elementTop < windowHeight +500) {
                navContainer.classList.add('container-add')
            } 
        }
    }
}
</script>

<style scoped>
@media (max-width: 540px){
    .skill{
        padding-top: 2rem;
        padding-bottom: 2rem;
        padding-left: 0rem;
        padding-right: 0rem;
    }
    .my-4{
        width: 400px;
    }
}
.skill{
    text-align: left;
    /* max-width: 1800px; */
    margin: 0 auto;
    /* padding: 2rem; */
    padding-top: 2rem;
    padding-bottom: 2rem;
    padding-left: 0rem;
    padding-right: 0rem;
    
    position: relative;
    transform: scale(0);
    opacity: 0;
    transition: 1.5s all ease;
}
.container{
    display: flex;
    align-items: center;
    flex-direction: column;
}
.container-add{
    transform: scale(1);
    opacity: 1;
}
.my-4{
    display: flex;
    flex-direction: row; 
    flex-wrap: wrap;
    justify-content: center;
    line-height: 1.5rem;
}
.innerMy-4{
    width: 600px;
    height: 300px;
    margin: 1rem;
    background-color: #f2f2f2;
    border-radius: 10px;
    padding: 2rem;
}
.my-4 :hover div{
    transform: scale(1.05);
}
.h4-content{
    margin-left: 0.5rem;
    margin-right: 0.5rem;
}
.skill-item{
    text-align: center;
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
.h3-title{
    font-size: 1.5rem;
}
.h4-detail{
    font-size: 1.25rem;
}
.ul-list-item{
    font-size: 1rem;    
}
.span-icon{
    margin: 0.75rem;
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

