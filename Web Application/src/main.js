import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'bootstrap-css-only/css/bootstrap.min.css'
import 'mdbvue/lib/css/mdb.min.css'
import Chartkick from 'vue-chartkick'
import Chart from 'chart.js'
import './plugins/element.js'
import VueFirestore from 'vue-firestore'

Vue.config.productionTip = false
Vue.use(Chartkick.use(Chart))
Vue.use(VueFirestore)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
