<template>
    <div id="education" class="education" @scroll="handleScroll">
        <h2 class="title">{{title}}</h2>
        <h2 class="subTitle">{{subTitle}}</h2>
        <div class="container">
        <div class="content">
            <ul class="ul-list">
                <li class="item ul-list-item slideInUp" v-for="item in education" :key="item.index">
                    <h3>{{item.department}} | {{item.during}}</h3>
                    <h4>{{item.title}}</h4>
                    <ul class="ul-list--inner">
                        <li class="item" v-for="list in item.about" :key="list.index">{{list}}</li>    
                    </ul>
                </li>
            </ul>
        </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Education',
    props: ['title','subTitle'],
    data () {
        return {
            education: [
                {
                    title: '逢甲大學',
                    during: '2011/9-2015/6',
                    department: '運輸科技與管理學系',
                    about: ['曾任系學會幹部舉辦系上各種活動','參加系上籃球隊']
                },
                {
                    title: '中正高中',
                    during: '2008/9-2011/6',
                    department: '普通科',
                    about: ['參加吉他社']
                }
            ]
        }
    },
    mounted () {
        window.addEventListener('scroll',this.handleScroll)
    },
    methods: {
        handleScroll() {
            const navContainer = document.querySelector('.education');
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
.education{
    /* max-width: 1200px; */
    margin: 0 auto;  
    padding: 2rem;
    
    position: relative;
    transform: translateY(140px);
    opacity: 0;
    transition: 1.5s all ease;
}
.container {
    display: flex;
    align-items: center;
    flex-direction: column;
    text-align: left;
}
.container-add{
    transform: translateY(0);
    opacity: 1;
}
.content{
    line-height: 1.5rem;
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
.ul-list--inner{
    font-size: 0.75rem;
}
</style>