<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            @media screen and (min-width:600px){
                img{
                    height: 100%;
                    width: 100%;
                }
            }
            .carrito {
                font-size: 18px; /* Tamaño de texto legible */
                color: #333; /* Color oscuro para mayor contraste */
                display: flex;
                align-items: center; /* Alinea ícono y texto verticalmente */

            }

            .carrito i {
                margin-right: 8px; /* Añade espacio entre el ícono y el texto */
            }

        </style>
    </head>
    <body style="background:rgba(1, 28, 36, 0.616)">
        <nav class="navbar navbar-expand-lg navbar-nav" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <img src="Zapatilla/logo.jpg" style="width:70px; height: auto;" >
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="btn btn-outline-light fas" aria-current="page" href="Controlador?accion=home"  style="margin: 10px;
                               color: black"">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline-light fas " href="#"  style="margin: 10px;
                               color: black">Ofertas del Dia</a>
                        </li>
                        <div class="carrito">
                            <li class="nav-item fas fa-shopping-cart">
                                <a class="btn btn-outline-light" aria-disabled="true"  href="Controlador?accion=Carrito" style="margin: 10px;
                                   color: black"">(<label style="color: darkred">${contador}</label>)Carrito</a>
                        </div>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <ul class="navbar-nav btn-outline-light" style="margin: 10px;" >
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Iniciar Sesion
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Registrarse</a></li>
                                <li><a class="dropdown-item" href="#">Inisiar Sesion</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <section>
            <div id="carouselExample" class="carousel slide">
                <div class="carousel-inner">
                    <div class="carousel-item active" style="
                         margin-left: 210px ">
                        <img src="Zapatilla/nikeair-jordan-1-high-og-sahara-san-diego-7y0kvhncppnctwme.jpg" class="d-block" style=" width: 70% ;
                             height: auto; " ">
                    </div>
                    <div class="carousel-item">
                        <img src="Zapatilla/zapatillajordan-6-tres-colores-qksza1az1ifyp5vh.jpg" class="d-block "  style=" width: 70%;
                             height: auto;
                             margin-left: 16%;">
                    </div>
                    <div " class="carousel-item">
                        <img src="Zapatilla/zapatosdeportivos-air-jordan-13-75v2wkid04wbnnns.jpg" class="d-block "  style=" width: 70%;
                             height: auto;
                             margin-left: 15%; ">
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" >
                        <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
                        <span class="visually-hidden" >Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </section>
        <div class="container mt-4">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header text-center">
                                <labe>${p.getNombres()}</labe>
                            </div>
                            <div class="card-body text-center">

                                <img src="ControladorIMG?id=${p.getId()}"  width="200" height="180">
                                <i>${p.getPrecio()}</i>
                                <div class="card-footer text-center">
                                    <label> ${p.getDescripcion()} </label>
                                    <div>
                                        <a href="Controlador?accion=Agregar&id=${p.getId()}" class="btn btn-primary fas fa-shopping-cart">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p.getId()}"  class="btn btn-danger">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
    </body>
</html>