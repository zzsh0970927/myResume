<template>
    <div class="nav-wrapper">
        <div class="container" id="bm-navbar" aria-expanded="false" @scroll="handleScroll">
            <ul class="nav navbar-nav">
                <li :id="'nav-'+ item.link.toLowerCase()" class="" v-for="(item,index) in sectionLink" :key="index">
                    <a :href="'#'+ item.link.toLowerCase()" class="scroll effect p-2"
                    :data-speed="item.scrollSpeed"
                    :class="{'active' : (item.link.toLowerCase() === data)}">{{item.item}}</a>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>

export default {
    name: 'NavBar',
    prop: ['title'],
    data () {
        return {
            sectionLink: [
                {
                    item: 'About',
                    link: 'AboutMe',
                    scrollSpeed: 1000
                },
                {
                    item: 'Experience & Education',
                    link: 'Experience',
                    scrollSpeed: 1000
                },
                {
                    item: 'Skill',
                    link: 'Skill',
                    scrollSpeed: 1000
                },
                {
                    item: 'SpecialExperience',
                    link: 'SpecialExperience',
                    scrollSpeed: 1000
                },
                {
                    item: 'Work',
                    link: 'Work',
                    scrollSpeed: 1000
                },
            ]
        }
    },
    mounted () {
        window.addEventListener('scroll',this.handleScroll)
    },
    methods: {
        handleScroll () {
            const vh100 = window.innerHeight;
            const scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
            const navContainer = document.querySelector('.container');
            if (scrollTop > vh100) {
                navContainer.classList.add('container-add')
            } else {
                navContainer.classList.remove('container-add')
            }
        }
    }
}
</script>

<style scoped>
.nav-wrapper{
  position: sticky;
  top: 0px;
  height: 0px;
  color: #FFFFFF;
  text-align: right; 
  z-index: 2;
}
.container-add{
    background-color: #FFFFFF;
    box-shadow: 7px 7px 7px -5px #333; 
}
ul, li{
    display:inline-block;
    padding: 0.25rem;
}
.p-2{
    font-size: 1rem;
}
a{
    text-decoration: none;
    color:gray;
    font-weight: bold;
}
</style>