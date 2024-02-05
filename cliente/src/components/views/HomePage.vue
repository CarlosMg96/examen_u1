<template>
    <div>
      <header style="z-index: 1000; position: relative;">
        <Navbar />
      </header>
      <div style="position: relative; z-index: 1; margin-left: 400px; /* Ajusta según sea necesario */">
        <b-sidebar-component />
        <b-breadcrumb :items="breadcrumbs" class="mt-3"></b-breadcrumb>
        <h1 style="position: relative; z-index: 1;">Inicio</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa omnis rerum eum ut esse sed, quo rem aut, quas soluta odio! Dignissimos doloremque, cumque corporis perferendis illo veritatis perspiciatis iste.</p>
        <img src="https://marcasdecoches.info/wp-content/uploads/2022/08/Logos-de-marcas-de-autos-o-carros-del-mundo.jpg" alt="logos" width="500px">
      </div>
    </div>
  </template>
  
  <script>
  import Navbar from '../xtra/Navbar.vue';
  import BSidebarComponent from '../xtra/Sidebar.vue';
  import { BBreadcrumb, BBreadcrumbItem } from 'bootstrap-vue';
  
  export default {
    components: {
      Navbar,
      BBreadcrumb,
      BBreadcrumbItem,
      BSidebarComponent,
    },
    data() {
      return {
        breadcrumbs: [
          { text: 'Autos', href: '/cars' },
          { text: 'Nuevo Auto', href: '/form' },
          { text: 'Home', href: '/home', active: true },
          // Agrega más migas de pan según sea necesario
        ],
      };
    },
  };
  </script>
  
  <style>
  /* Puedes agregar estilos personalizados aquí si es necesario */
  </style>
  