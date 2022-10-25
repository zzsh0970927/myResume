<template>
  <div class="home">
      <NavBar></NavBar>
    <KVTyper title="Hi! I'm Kevin Hsu"></KVTyper>
    <div class="container">
      <div id="About" class="About">
      <AboutMe AboutMe title="About Me."></AboutMe>
    </div>
      <div id="ExperienceEducation" class="row">
        <div class="row-experiences">
          <ExperiencesList title="Experiences." subTitle="經歷"></ExperiencesList>
        </div>
        <div class="row-education">
          <Education title="Education." subTitle="學歷"></Education>
        </div>
    </div>
    <div id="Skill" class="Skill">
      <Skills title="Skills." subTitle="技術"></Skills>
    </div>
    <div id="SpecialExperience" class="SpecialExperience">
      <SpecialExperiences title="SpecialExperiences." subTitle="特殊經歷"></SpecialExperiences>
    </div>
    <div id="Work" class="Work">
      <Works title="Works." subTitle="作品集"></Works>
    </div>
    </div>
  </div>
</template>

<script>
import AboutMe from '@/components/AboutMe.vue'
import Education from '@/components/Education.vue'
import ExperiencesList from '@/components/ExperiencesList.vue'
import Skills from '@/components/Skills.vue'
import SpecialExperiences from '@/components/SpecialExperiences.vue'
import Works from '@/components/Works.vue'
import KVTyper from '@/components/KVTyper.vue'
import NavBar from '@/components/NavBar.vue'

export default {
  name: 'Home',
  components: {
    AboutMe,
    Education,
    ExperiencesList,
    Skills,
    SpecialExperiences,
    Works,
    KVTyper,
    NavBar
  },
  data () {
    return {
      intersectionOptions: {
        root: document.querySelector('#app'),
        rootMargin: '0px 0px 0px 0px',
        threshold: 0
      },
    }
  },
}
</script>

<style scoped>
.container{
  display: flex;
  align-items: center;
  flex-direction: column;
}
.row{
  display: flex;
  background-color: #f2f2f2;  
  width: 100%;
  justify-content: center;
}
.SpecialExperience{
  display: flex;
  background-color: #f2f2f2;
  width: 100%;
  justify-content: center;   
}
</style>