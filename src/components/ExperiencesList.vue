<template>
    <div id="experience" class="experience" @scroll="handleScroll">
        <h2 class="title">{{title}}</h2>
        <h2 class="subTitle">{{subTitle}}</h2>
        <div class="container">
        <div class="content">
            <ul class="ul-list">
                <li
                  class="item"
                  v-for="item in experiences"
                  :key="item.index"
                >
                  <h3>{{item.title}} | {{item.during}}</h3>
                  <h4>{{item.company}}</h4>
                  <ul class="ul-list--inner">
                    <li 
                      class="detail"
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
</template>

<script>
export default {
    name: 'ExperiencesList',
    props: ['title','subTitle'],
    data () {
        return {
            experiences: [
                {
                    company: '博暉科技股份有限公司',
                    title: '軟體設計工程師',
                    during: '2021/8-2022/10',
                    list: [
                        '使用 asp.Net、MSSQL 開發及維護投信投顧基金會計系統',
                        '製作水晶報表(Crystal Report)供User檢核、做結帳作業',
                        '到客戶公司做產品操作教育訓練',
                        '操作手冊繕寫',
                        '公司新人基本操作教育訓練'
                    ],
                },
                {
                    company: '植根國際資訊股份有限公司',
                    title: 'Internet程式設計師',
                    during: '2020/12-2021/6',
                    list:[
                        '使用 asp.NET、MVC 開發政府標案之網頁',
                        '將舊版網頁 PHP 改寫成 asp.Net',
                        '依使用者需求調整資料庫之資料'
                    ],
                },
                {
                    company: '捷盛報關股份有限公司',
                    title: '外務',
                    during: '2019/3-2020/2',
                    list: [
                        '送文件到各船務公司、Forwarder及客戶',
                        '會計帳務、報關文件處理'
                    ],
                },
                {
                    company: '沛榮國際股份有限公司',
                    title: 'SALES',
                    during: '2018/3-2019/2',
                    list: [
                        '電訪、拜訪客戶承攬海空運之貨物',
                        '繕寫報價單及計劃書'
                    ],
                },
                {
                    company: '統聯客運股份有限公司',
                    title: '車輛調度員',
                    during: '2015/7-2018/3',
                    list: [
                        '車輛及駕駛員之調度出勤管理',
                        '車輛維修安排、設備安檢',
                        '場站管理、車輛監控、文件繕寫'
                    ],
                }
            ]
        }
    },
    mounted () {
        window.addEventListener('scroll',this.handleScroll)
    },
    methods: {
        handleScroll() {
            const navContainer = document.querySelector('.experience');
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
.experience{
    max-width: 1200px;
    margin: 0 auto;
    text-align: left;
    padding: 2rem; 
    
    position: relative;
    transform: translateY(150px);
    opacity: 0;
    transition: 1.5s all ease;
}
.container {
    display: flex;
    align-items: center;
    flex-direction: column;
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
.detail{
    font-size: 0.75rem;
}
</style>