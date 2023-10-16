
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--favicon-->
    <link rel="icon" href="../assets/images/favicon-32x32.png" type="image/png" />
    <!-- loader-->
    <link href="../assets/css/pace.min.css" rel="stylesheet" />
    <script src="../assets/js/pace.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/bootstrap-extended.css" rel="stylesheet">
    <link href="../assets/css/app.css" rel="stylesheet">
    <link href="../assets/css/icons.css" rel="stylesheet">
    <title>Factura express</title>

    <script src="../js/jquery-3.6.0.min.js"></script>   
    <script src="../js/app.js"></script>
    <script src="../js/login.js"></script>  
    <script src="../js/sweetalert2.js"></script>

     <script type="text/javascript">
        $(document).ready(function () {
            recordar();
        });
    </script>
</head>

<body>
    <!-- wrapper -->
    <div class="wrapper">
        <div class="authentication-reset-password d-flex align-items-center justify-content-center">
            <div class="row">
                <div class="col-12 col-lg-10 mx-auto">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-5 border-end">
                                <div class="card-body">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <img src="../img/sistema/logo_azul.png" width="180" alt="">
                                        </div>
                                        <h4 class="mt-4 font-weight-bold">Bienvenido</h4>
                                        <p class="text-muted">Para ingresar al sistema y comenzar a facturar ingrese los siguientes datos.</p>
                                        <div class="mb-0 mt-4 text-end">
                                            <p style="color:green;display: none;" id="validar_emp">Empresa validad</p>
                                        </div>
                                        <div class="mb-2">
                                            <label class="form-label">RUC de empresa</label>
                                            <input type="text" class="form-control" placeholder="Ingrese ruc de empresa" id="txt_empresa" onblur="busca_empresa()" />
                                             <input type="text" class="form-control form-control-user" id="txt_id_empresa" style="display:none">
                                        </div>
                                        <div class="mb-2">
                                            <label class="form-label">Usuario</label>
                                            <input type="text" class="form-control" placeholder="Ingrese usuario" id="txt_usuario" />
                                        </div>
                                        <div class="mb-2">
                                            <label class="form-label">Contraseña</label>
                                            <input type="text" id="txt_password" class="form-control" placeholder="Ingrese contraseña" />
                                        </div>
                                        <div class="d-grid gap-2">
                                            <button type="button" class="btn btn-primary" onclick="login()">Ingresar</button> 
                                            <a href="authentication-login.html" class="btn btn-light"> Nueva empresa? <i class='bx bx-right-arrow-alt mr-1'></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <img src="../assets/images/login-images/forgot-password-frent-img.jpg" class="card-img login-img h-100" alt="..." id="img_default">
                                <div style="width:643px; height:616px;display: none; justify-content: center;align-items: center;" id="img_empresa">
                                    <img src="" class="login-img" alt="..." id="logo_emp">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end wrapper -->
</body>

</html>