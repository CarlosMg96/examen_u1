<template>
    <div>
      <header style="z-index: 1000; position: relative;">
        <Navbar />
      </header>
      <div style="position: relative; z-index: 1; margin-left: 400px;">
        <b-sidebar-component style="z-index: 1000; position: absolute;"></b-sidebar-component>
        <b-breadcrumb :items="breadcrumbs" class="mt-3"></b-breadcrumb>
        <div class="text-center">
          <h1>Carros</h1>
        </div>
        <main>
          <b-container class="mt-5">
            <b-input placeholder="Buscar" v-model="filtro"></b-input>
            <b-table
              class="mt-5"
              id="my-table"
              :items="autos"
              :per-page="perPage"
              :current-page="currentPage"
              :fields="fields"
              :sort-by.sync="sortBy"
              :sort-desc.sync="sortDesc"
              label-sort-asc=""
              label-sort-desc=""
              small
              :filter="filtro"
              @filtered="onFiltered"
            ></b-table>
            <div class="overflow-auto">
              <b-pagination
                v-model="currentPage"
                :total-rows="rows"
                :per-page="perPage"
                aria-controls="my-table"
              ></b-pagination>
  
              <p class="mt-3">Current Page: {{ currentPage }}</p>
            </div>
          </b-container>
        </main>
      </div>
    </div>
  </template>
  
  <script>
  import Navbar from '../xtra/Navbar.vue';
  import BSidebarComponent from '../xtra/Sidebar.vue';
  import { BBreadcrumb, BBreadcrumbItem } from 'bootstrap-vue';
  import CarService from '../../../services/Cars';
  
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
          { text: 'Home', href: '/home' },
          { text: 'Nuevo Auto', href: '/form' },
          { text: 'Autos', href: '/cars', active: true },
        ],
        filtro: null,
        sortBy: 'modelo',
        sortDesc: false,
        perPage: 5,
        rows: 0,
        currentPage: 1,
        autos: [],
        fields: [
          { key: 'marca', label: 'Marca', sortable: true },
          { key: 'modelo', label: 'Modelo', sortable: true },
          { key: 'anio_fabricacion', label: 'Año de Fabricación', sortable: true },
          { key: 'numero_serie', label: '# de Serie', sortable: true },
        ],
      };
    },
    mounted() {
      this.obtenerCarros();
    },
    methods: {
      async obtenerCarros() {
        try {
          const data = await CarService.obtenerCarrosPaginados();
          this.autos = data;
          this.rows = this.autos.length;
        } catch (error) {
          console.error(error);
        }
      },
      onFiltered(filteredItems) {
        this.currentPage = 1;
        this.rows = filteredItems.length;
      },
    },
  };
  </script>
  
  <style>
  </style>
  