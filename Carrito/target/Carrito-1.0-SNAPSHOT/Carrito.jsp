<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8" %>
=======
<!doctype html>
>>>>>>> 1583c7ce412d04b4bcdc3fe166ec0528e4b4d9ea
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <body>

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
                                <a class="btn btn-outline-light" aria-disabled="true"  href="Controlador?accion=Home" style="margin: 10px;
                                   color: black">Seguir Comprando</a>
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
        <div class="container mt-4" style="text-align: center">
            <h3 class="fas fa-shopping-cart">CARRITO </h3>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
<<<<<<< HEAD
                        <c:forEach var="c" items="${carrito}">
                            <tr>
                                <td>${c.getItem()}</td>
                                <td>${c.getNombres()}</td>
                                <td>${c.getDescripcion()}
                                 <img src="ControladorIMG?id=${c.getIdProducto()}" width="100" height="100">
                                </td>
                       
                                <td>${c.getPrecioCompra()}</td>
                                <td>${c.getCantidad()}</td>
                                <td>${c.getSubTotal()}</td>
                                <td>
                                      <br>
                                    <a class="btn btn-success">Editar</a>
                                    <br>
                                      <br>

                                    <a class="btn btn-danger">Eliminar</a>
                                </td>
=======
                        <c:forEach var="car" items="${carrito}">
                            <tr>
                                <td>${car.getItem()}</td>
                                <td>${car.getNombres()}</td>
                                <td>${car.getDescripcion()}</td>
                                <td>${car.getPrecio()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>$car.getSubtotal</td>
                                <td></td>
>>>>>>> 1583c7ce412d04b4bcdc3fe166ec0528e4b4d9ea
                            </tr>
                        </c:forEach>
                            
                        </tbody>
                    </table>
                        
                    </div>
                
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                         <div class="card-body">
                             <label>Subtotal: </label>
<<<<<<< HEAD
                             <input type="text" value="${total}" readonly="" class="form-control">
                              <label>Descuento: </label>
                             <input type="text" readonly="" class="form-control">
                              <label>Total Pagar: </label>
                             <input type="text" value="${total}" readonly="" class="form-control">
=======
                             <input type="text" readonly="" class="form-control">
                              <label>Descuento: </label>
                             <input type="text" readonly="" class="form-control">
                              <label>Total Pagar: </label>
                             <input type="text" readonly="" class="form-control">
>>>>>>> 1583c7ce412d04b4bcdc3fe166ec0528e4b4d9ea
                            </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="#" class="btn btn-danger btn-block">Generar Compra </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
    </body>
</html>