

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Red Bancaria</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: left;
            color: #1199B7;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Red Bancaria</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varid'])) {
    ?>
        <form action="Red Bancaria.php" method="post">
            
            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" required />
            </div>

                <div class="form-group">
                <label for="varnombre">nombre</label>
                <input type="text" name="varnombre" id="varnombre"   />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $id = $_POST['varid'];
                $nombre = $_POST['varnombre'];
    
            $query = "INSERT INTO `Red Bancaria` (";
            $query .= "id";
                $query .= ", nombre";
                $query .= ") VALUES (";
            
            $query .= "'" . $id . "'";
                $query .= ", '" . $nombre . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Red Bancaria</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Red Bancaria.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Banco</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: center;
            color: #7E0EC5;
            font-family: 'Verdana', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Banco</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varid'])) {
    ?>
        <form action="Banco.php" method="post">
            
            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" required />
            </div>

                <div class="form-group">
                <label for="varnombre">nombre</label>
                <input type="text" name="varnombre" id="varnombre"  required />
            </div>
                <div class="form-group">
                <label for="varporcentaje">porcentaje</label>
                <input type="number" name="varporcentaje" id="varporcentaje"  required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $id = $_POST['varid'];
                $nombre = $_POST['varnombre'];
                $porcentaje = $_POST['varporcentaje'];
    
            $query = "INSERT INTO `Banco` (";
            $query .= "id";
                $query .= ", nombre";
                $query .= ", porcentaje";
                $query .= ") VALUES (";
            
            $query .= "'" . $id . "'";
                $query .= ", '" . $nombre . "'";
                $query .= ", '" . $porcentaje . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Banco</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Banco.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Cajero</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: left;
            color: #F2FE15;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Cajero</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varid'])) {
    ?>
        <form action="Cajero.php" method="post">
            
            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" required />
            </div>

                <div class="form-group">
                <label for="varsaldoDisponible">saldoDisponible</label>
                <input type="number" name="varsaldoDisponible" id="varsaldoDisponible" step='any' required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $id = $_POST['varid'];
                $saldoDisponible = $_POST['varsaldoDisponible'];
    
            $query = "INSERT INTO `Cajero` (";
            $query .= "id";
                $query .= ", saldoDisponible";
                $query .= ") VALUES (";
            
            $query .= "'" . $id . "'";
                $query .= ", '" . $saldoDisponible . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Cajero</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Cajero.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Cuenta</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: left;
            color: #15FE97;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Cuenta</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varnumero'])) {
    ?>
        <form action="Cuenta.php" method="post">
            
            <div class="form-group">
                <label for="varnumero">numero (PK)</label>
                <input type="text" name="varnumero" id="varnumero" required />
            </div>

                <div class="form-group">
                <label for="varsaldo">saldo</label>
                <input type="number" name="varsaldo" id="varsaldo" step='any' required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $numero = $_POST['varnumero'];
                $saldo = $_POST['varsaldo'];
    
            $query = "INSERT INTO `Cuenta` (";
            $query .= "numero";
                $query .= ", saldo";
                $query .= ") VALUES (";
            
            $query .= "'" . $numero . "'";
                $query .= ", '" . $saldo . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Cuenta</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Cuenta.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Tarjeta</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: left;
            color: #98B711;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Tarjeta</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varid'])) {
    ?>
        <form action="Tarjeta.php" method="post">
            
            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" required />
            </div>

                <div class="form-group">
                <label for="varsaldoActual">saldoActual</label>
                <input type="number" name="varsaldoActual" id="varsaldoActual" step='any' required />
            </div>
                <div class="form-group">
                <label for="varfechaCaducidad">fechaCaducidad</label>
                <input type="date" name="varfechaCaducidad" id="varfechaCaducidad"  required />
            </div>
                <div class="form-group">
                <label for="varimporteMaximo">importeMaximo</label>
                <input type="number" name="varimporteMaximo" id="varimporteMaximo" step='any' required />
            </div>
                <div class="form-group">
                <label for="varestado">estado</label>
                <input type="number" name="varestado" id="varestado"  required />
            </div>
                <div class="form-group">
                <label for="varpin">pin</label>
                <input type="number" name="varpin" id="varpin"  required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $id = $_POST['varid'];
                $saldoActual = $_POST['varsaldoActual'];
                $fechaCaducidad = $_POST['varfechaCaducidad'];
                $importeMaximo = $_POST['varimporteMaximo'];
                $estado = $_POST['varestado'];
                $pin = $_POST['varpin'];
    
            $query = "INSERT INTO `Tarjeta` (";
            $query .= "id";
                $query .= ", saldoActual";
                $query .= ", fechaCaducidad";
                $query .= ", importeMaximo";
                $query .= ", estado";
                $query .= ", pin";
                $query .= ") VALUES (";
            
            $query .= "'" . $id . "'";
                $query .= ", '" . $saldoActual . "'";
                $query .= ", '" . $fechaCaducidad . "'";
                $query .= ", '" . $importeMaximo . "'";
                $query .= ", '" . $estado . "'";
                $query .= ", '" . $pin . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Tarjeta</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Tarjeta.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Movimiento</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F54927; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: left;
            color: #A5BE9E;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario genéricos */
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #555; }
        input[type="text"], input[type="number"], input[type="date"], select {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;
        }
        input[type="submit"]:hover { background-color: #218838; }
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#662E23; font-family:"Arial"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
        
        <h2 class="titulo-pagina">Movimiento</h2>

    <?php
        // LOGICA PHP
        if (!isset($_POST['varid'])) {
    ?>
        <form action="Movimiento.php" method="post">
            
            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" required />
            </div>

                <div class="form-group">
                <label for="varconcepto">concepto</label>
                <input type="text" name="varconcepto" id="varconcepto"  required />
            </div>
                <div class="form-group">
                <label for="varfecha">fecha</label>
                <input type="date" name="varfecha" id="varfecha"  required />
            </div>
                <div class="form-group">
                <label for="varcantidad">cantidad</label>
                <input type="number" name="varcantidad" id="varcantidad" step='any' required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect("localhost", "root", "");
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redBancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redBancaria</div>");
            }

            $id = $_POST['varid'];
                $concepto = $_POST['varconcepto'];
                $fecha = $_POST['varfecha'];
                $cantidad = $_POST['varcantidad'];
    
            $query = "INSERT INTO `Movimiento` (";
            $query .= "id";
                $query .= ", concepto";
                $query .= ", fecha";
                $query .= ", cantidad";
                $query .= ") VALUES (";
            
            $query .= "'" . $id . "'";
                $query .= ", '" . $concepto . "'";
                $query .= ", '" . $fecha . "'";
                $query .= ", '" . $cantidad . "'";
                $query .= ")";

            if (mysqli_query($link, $query)) {
                echo "<div class='mensaje exito'>Registro insertado correctamente en <strong>Movimiento</strong>.</div>";
            } else {
                echo "<div class='mensaje error'>Error al insertar: " . mysqli_error($link) . "</div>";
            }

            mysqli_close($link);
            echo "<a href='Movimiento.php' class='volver'>Volver al formulario</a>";
        }
    ?>
    </div>
</body>
</html>
