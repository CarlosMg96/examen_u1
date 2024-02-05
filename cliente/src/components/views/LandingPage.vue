<template>
    <div>
        <header class="bg-dark text-light text-center py-5">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="position: sticky;">
                <div class="container">
                    <router-link to="/" class="navbar-brand">Cars Company</router-link>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <router-link to="/home" class="nav-link">Inicio</router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/features" class="nav-link">Cónocenos</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <h1 class="display-4 mt-4">Bienvenido a Cars Company</h1>
            <p class="lead">Donde quedarás extasiado con los autos!</p>
            <a href="/home" class="btn btn-primary btn-lg mt-3">Get Started</a>
        </header>

        <section class="container my-5">
            <h2 class="text-center mb-4">Modelos</h2>

            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="https://www.pngall.com/wp-content/uploads/2016/07/Car-PNG-Picture.png"
                                class="card-img-top" alt="Feature 2" width="100px" height="250px"/>
                            <div class="card-body d-flex flex-column align-items-center">
                                <h5 class="card-title">Feature 1</h5>
                                <p class="card-text text-center">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="https://www.seekpng.com/png/detail/954-9541893_carro-png-sin-fondo-de-frente-hot-hatch.png"
                                class="card-img-top" alt="Feature 3" width="100px" height="250px"/>
                            <div class="card-body d-flex flex-column align-items-center">
                                <h5 class="card-title">Feature 2</h5>
                                <p class="card-text text-center">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="text-center">
                    <h2>Qué vendemos</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt quas ex reprehenderit
                        obcaecati, distinctio iure reiciendis molestiae laborum dicta nulla repellendus similique impedit
                        minus voluptates odit adipisci temporibus minima.</p>
                </div>
            </div>
        </section>

        <footer class="bg-dark text-light text-center py-3">
            <p>&copy; 2024 Cars Company. All rights reserved for CMGR.</p>
            <div class="social-icons mt-3">
                <a href="#" class="text-light me-3"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-light me-3"><i class="fab fa-facebook"></i></a>
                <a href="#" class="text-light me-3"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="text-light"><i class="fab fa-instagram"></i></a>
            </div>
        </footer>
    </div>
</template>
  
<script>
export default {};
</script>
  
<style>
/* Puedes agregar estilos adicionales aquí si es necesario */
</style>
  