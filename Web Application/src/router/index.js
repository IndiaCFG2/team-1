import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/home.vue'
import Login from '../components/login.vue'
import Admin from '../components/admin.vue'
import Policy from '../components/policy.vue'
import Graphs from '../components/graphs.vue'
import Graphs1 from '../components/graphs1.vue'
import Graphs2 from '../components/graphs2.vue'
import Graphs3 from '../components/graph3.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/admin',
    name: 'admin',
    component: Admin
  },
  {
    path: '/admin/policy',
    name: 'policy',
    component: Policy
  },
  {
    path: '/admin/graphs',
    name: 'graphs',
    component: Graphs
  },
  {
    path: '/admin/graphs1',
    name: 'graphs1',
    component: Graphs1
  },
  {
    path: '/admin/graphs2',
    name: 'graphs2',
    component: Graphs2
  },
  {
    path: '/admin/graphs3',
    name: 'graphs3',
    component: Graphs3
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
