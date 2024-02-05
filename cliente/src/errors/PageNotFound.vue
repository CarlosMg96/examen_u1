<template>
    <div class="text-center mt-5">
      <h1>¡Ups! Página no encontrada</h1>
      <img src="https://www.webempresa.com/wp-content/uploads/2020/08/ejemplo-pagina-404-divi.jpg" alt="Error 404">
      <p>Lo sentimos, la página que estás buscando no se encuentra.</p>
      <router-link to="/">Volver a la página principal</router-link>
    </div>
  </template>
  
  <style>
    /* Puedes agregar estilos personalizados según tus necesidades */
    h1 {
      color: red;
    }
  
    img {
      width: 300px; /* Ajusta el tamaño de la imagen según tus necesidades */
      height: auto;
    }
  
    p {
      font-size: 18px;
      margin-top: 10px;
    }
  
    router-link {
      margin-top: 20px;
      display: inline-block;
      font-size: 16px;
      text-decoration: underline;
      color: blue;
    }
  </style>
  