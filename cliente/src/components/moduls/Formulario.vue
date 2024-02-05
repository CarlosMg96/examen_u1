<template>
    <div>
      <header style="z-index: 1000; position: relative;">
        <Navbar />
      </header>
      <div style="position: relative; z-index: 1; margin-left: 400px;">
        <b-sidebar-component style="z-index: 1000; position: absolute;"></b-sidebar-component>
        <b-breadcrumb :items="breadcrumbs" class="mt-3"></b-breadcrumb>
        <b-container>
          <h2 class="my-4">Formulario de Registro de Auto</h2>
          <b-form @submit.prevent="submitForm">
            <b-form-group id="marca-input-group" label="Marca" label-for="marca-input">
              <b-form-input
                id="marca-input"
                v-model="marca"
                required
                pattern="[a-zA-Z0-9]+"
                placeholder="Ejemplo: Toyota"
              ></b-form-input>
              <b-form-invalid-feedback id="marca-feedback">{{ marcaError }}</b-form-invalid-feedback>
            </b-form-group>
  
            <b-form-group id="modelo-input-group" label="Modelo" label-for="modelo-input">
              <b-form-input
                id="modelo-input"
                v-model="modelo"
                required
                pattern="[a-zA-Z0-9]+"
                placeholder="Ejemplo: Camry"
              ></b-form-input>
              <b-form-invalid-feedback id="modelo-feedback">{{ modeloError }}</b-form-invalid-feedback>
            </b-form-group>
  
            <b-form-group id="anio-input-group" label="Año de Fabricación" label-for="anio-input">
              <b-form-input
                id="anio-input"
                v-model="anioFabricacion"
                type="number"
                required
                :max="currentYear"
                placeholder="Ejemplo: 2022"
              ></b-form-input>
              <b-form-invalid-feedback id="anio-feedback">{{ anioFabricacionError }}</b-form-invalid-feedback>
            </b-form-group>
  
            <b-form-group id="numero-serie-input-group" label="Número de Serie" label-for="numero-serie-input">
              <b-form-input
                id="numero-serie-input"
                v-model="numeroSerie"
                required
                pattern="[a-zA-Z]{4}\d{3}-\d{2}[a-zA-Z]{2}"
                placeholder="Ejemplo: XXXX000-00XX "
              ></b-form-input>
              <b-form-invalid-feedback id="numero-serie-feedback">{{ numeroSerieError }}</b-form-invalid-feedback>
            </b-form-group>
  
            <b-button class="mt-5" type="submit" variant="primary">Registrar Vehículo</b-button>
          </b-form>
        </b-container>
      </div>
    </div>
  </template>
  
  <script>
  import Navbar from '../xtra/Navbar.vue';
  import BSidebarComponent from '../xtra/Sidebar.vue';
  import {
    BBreadcrumb,
    BForm,
    BFormGroup,
    BFormInput,
    BFormInvalidFeedback,
    BButton,
  } from 'bootstrap-vue';
  
  export default {
    components: {
      Navbar,
      BBreadcrumb,
      BForm,
      BFormGroup,
      BFormInput,
      BFormInvalidFeedback,
      BButton,
      BSidebarComponent,
    },
    data() {
      return {
        breadcrumbs: [
          { text: 'Home', href: '/home' },
          { text: 'Autos', href: '/cars' },
          { text: 'Nuevo Auto', active: true },
        ],
        marca: '',
        modelo: '',
        anioFabricacion: null,
        numeroSerie: '',
        currentYear: new Date().getFullYear(),
        marcaError: 'La marca solo puede contener letras y números.',
        modeloError: 'El modelo solo puede contener letras y números.',
        anioFabricacionError: 'El año de fabricación no puede ser mayor al actual.',
        numeroSerieError: 'El número de serie debe tener el formato correcto.',
      };
    },
    methods: {
      submitForm() {
        console.log('Formulario enviado:', {
          marca: this.marca,
          modelo: this.modelo,
          anioFabricacion: this.anioFabricacion,
          numeroSerie: this.numeroSerie,
        });
      },
    },
  };
  </script>
  
  <style>
  .b-form-group.is-invalid {
    color: red;
    background-color: #ffe6e6;
    /* Puedes personalizar este estilo según tus necesidades */
  }
  
  .invalid-feedback {
    color: red;
    /* Puedes personalizar este estilo según tus necesidades */
  }
  </style>
  