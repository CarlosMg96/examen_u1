import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'landing',
    component: () => import('../src/components/views/LandingPage.vue'), 
  },
  {
    path: '/home',
    name: 'home',
    component: () => import('../src/components/views/HomePage.vue'), 
  },
  {
    path: '/form',
    name: 'form',
    component: () => import('../src/components/moduls/Formulario.vue'), 
  },
  {
    path: '/cars',
    name: 'cars',
    component: () => import('../src/components/views/CarsPage.vue'), 
  },
  {
    path: '/*',
    name: 'error404',
    component: () =>import('../src/errors/PageNotFound.vue'),
  }
];

const router = new VueRouter({
  mode: 'history', // Habilita el modo de historial
  fallback: true, //Está sirve para hacer un modo híbrido
  routes,
});

export default router;
