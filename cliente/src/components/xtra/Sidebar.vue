<template>
    <b-sidebar id="sidebar" title="" bg-variant="light" text-variant="dark" :visible="sidebarVisible">
      <b-nav vertical>
        <b-nav-item :to="{ path: '/home', activeClass: 'active' }">Autos</b-nav-item>
        <b-nav-item :to="{ path: '/form', activeClass: 'active' }">Nuevo Auto</b-nav-item>
        <b-nav-item :to="{ path: '/cars', activeClass: 'active' }">Autos</b-nav-item>
      </b-nav>
    </b-sidebar>
  </template>
  
  <script>
  import { BSidebar, BNav, BNavItem } from 'bootstrap-vue';
  
  export default {
    components: {
      BSidebar,
      BNav,
      BNavItem,
    },
    data() {
      return {
        sidebarVisible: true,
      };
    },
    mounted() {
      window.addEventListener('resize', this.handleResize);
      this.handleResize();
    },
    methods: {
      handleResize() {
        this.sidebarVisible = window.innerWidth > 768;
      },
    },
    beforeDestroy() {
      window.removeEventListener('resize', this.handleResize);
    },
  };
  </script>
  
  <style scoped>
  
  #sidebar {
    border-right: 1px solid #dee2e6; 
    z-index: 1; 
  }
  
  .active {
    background-color: #007bff; 
    color: #fff !important; 
  }
  

  #sidebar a {
    text-decoration: none !important;
    z-index: 1; 
  }
  </style>
  