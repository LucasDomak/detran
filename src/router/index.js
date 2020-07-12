import Vue from 'vue'
import VueRouter from 'vue-router'
import Consulta from '../views/Consulta.vue'
import Resultado from '../views/Resultado.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Consulta',
    component: Consulta
  },
  {
    path: '/Resultado',
    name: 'Resultado',
    component: Resultado
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
