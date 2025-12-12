

<html>
<head>
    <title>Gestión de Red Bancaria</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Red Bancaria</h1>
    
    <form action="Red Bancaria.php" method="post">
        
        <div class="form-group">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varnombre">nombre:</label>
            <input type="text" name="varnombre" id="varnombre"   />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $nombre = $_POST['varnombre'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Red Bancaria` (";
        // Columnas
        $query .= "id";
        $query .= ", nombre";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $id . "'";
        $query .= ", '" . $nombre . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Red Bancaria.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Red Bancaria.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




<html>
<head>
    <title>Gestión de Banco</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Banco</h1>
    
    <form action="Banco.php" method="post">
        
        <div class="form-group">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varnombre">nombre:</label>
            <input type="text" name="varnombre" id="varnombre"  required />
        </div>
        <div class="form-group">
            <label for="varporcentaje">porcentaje:</label>
            <input type="number" name="varporcentaje" id="varporcentaje"  required />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $nombre = $_POST['varnombre'];
        $porcentaje = $_POST['varporcentaje'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Banco` (";
        // Columnas
        $query .= "id";
        $query .= ", nombre";
        $query .= ", porcentaje";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $id . "'";
        $query .= ", '" . $nombre . "'";
        $query .= ", '" . $porcentaje . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Banco.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Banco.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




<html>
<head>
    <title>Gestión de Cajero</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Cajero</h1>
    
    <form action="Cajero.php" method="post">
        
        <div class="form-group">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varsaldoDisponible">saldoDisponible:</label>
            <input type="number" name="varsaldoDisponible" id="varsaldoDisponible" step='any' required />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $saldoDisponible = $_POST['varsaldoDisponible'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Cajero` (";
        // Columnas
        $query .= "id";
        $query .= ", saldoDisponible";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $id . "'";
        $query .= ", '" . $saldoDisponible . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Cajero.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Cajero.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




<html>
<head>
    <title>Gestión de Cuenta</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varnumero'])) {
?>
    <h1 class="titulo-entidad">Cuenta</h1>
    
    <form action="Cuenta.php" method="post">
        
        <div class="form-group">
            <label for="varnumero">numero (PK):</label>
            <input type="text" name="varnumero" id="varnumero" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varsaldo">saldo:</label>
            <input type="number" name="varsaldo" id="varsaldo" step='any' required />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $numero = $_POST['varnumero'];
        $saldo = $_POST['varsaldo'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Cuenta` (";
        // Columnas
        $query .= "numero";
        $query .= ", saldo";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $numero . "'";
        $query .= ", '" . $saldo . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Cuenta.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Cuenta.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




<html>
<head>
    <title>Gestión de Tarjeta</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Tarjeta</h1>
    
    <form action="Tarjeta.php" method="post">
        
        <div class="form-group">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varsaldoActual">saldoActual:</label>
            <input type="number" name="varsaldoActual" id="varsaldoActual" step='any' required />
        </div>
        <div class="form-group">
            <label for="varfechaCaducidad">fechaCaducidad:</label>
            <input type="date" name="varfechaCaducidad" id="varfechaCaducidad"  required />
        </div>
        <div class="form-group">
            <label for="varimporteMaximo">importeMaximo:</label>
            <input type="number" name="varimporteMaximo" id="varimporteMaximo" step='any' required />
        </div>
        <div class="form-group">
            <label for="varestado">estado:</label>
            <input type="number" name="varestado" id="varestado"  required />
        </div>
        <div class="form-group">
            <label for="varpin">pin:</label>
            <input type="number" name="varpin" id="varpin"  required />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $saldoActual = $_POST['varsaldoActual'];
        $fechaCaducidad = $_POST['varfechaCaducidad'];
        $importeMaximo = $_POST['varimporteMaximo'];
        $estado = $_POST['varestado'];
        $pin = $_POST['varpin'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Tarjeta` (";
        // Columnas
        $query .= "id";
        $query .= ", saldoActual";
        $query .= ", fechaCaducidad";
        $query .= ", importeMaximo";
        $query .= ", estado";
        $query .= ", pin";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $id . "'";
        $query .= ", '" . $saldoActual . "'";
        $query .= ", '" . $fechaCaducidad . "'";
        $query .= ", '" . $importeMaximo . "'";
        $query .= ", '" . $estado . "'";
        $query .= ", '" . $pin . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Tarjeta.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Tarjeta.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




<html>
<head>
    <title>Gestión de Movimiento</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
        * { box-sizing: border-box; }
        body { 
            font-family: 'Roboto', sans-serif; 
            background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
            margin: 0; padding: 20px;
            display: flex; justify-content: center; align-items: center; min-height: 100vh;
        }
        
        /* Contenedor tipo Tarjeta */
        .card {
            background: white; padding: 40px; border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2); width: 100%; max-width: 500px;
        }

        /* Título dinámico (según propiedades del DSL) */
        h1.titulo-entidad {
            margin-top: 0; 
            color: ; 
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            border-bottom: 2px solid #eee; 
            padding-bottom: 15px;
            margin-bottom: 30px;
        }

        /* Formulario */
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; font-weight: 500; }
        
        /* Inputs */
        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 16px;
            background-color: #fafafa; transition: border-color 0.3s;
        }
        input:focus { border-color: #0082c8; outline: none; background-color: #fff; }

        /* Botón */
        input[type="submit"] {
            width: 100%; padding: 12px; background-color: #28a745; color: white; border: none;
            border-radius: 5px; cursor: pointer; font-size: 16px; margin-top: 10px; transition: 0.3s;
        }
        input[type="submit"]:hover { background-color: #218838; }

        /* Mensajes y enlaces */
        .mensaje { padding: 15px; margin-top: 20px; border-radius: 5px; text-align: center; }
        .exito { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        a.volver { display: block; text-align: center; margin-top: 20px; color: #0082c8; text-decoration: none; }
        a.volver:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Movimiento</h1>
    
    <form action="Movimiento.php" method="post">
        
        <div class="form-group">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required placeholder="Identificador único" />
        </div>

        <div class="form-group">
            <label for="varconcepto">concepto:</label>
            <input type="text" name="varconcepto" id="varconcepto"  required />
        </div>
        <div class="form-group">
            <label for="varfecha">fecha:</label>
            <input type="date" name="varfecha" id="varfecha"  required />
        </div>
        <div class="form-group">
            <label for="varcantidad">cantidad:</label>
            <input type="number" name="varcantidad" id="varcantidad" step='any' required />
        </div>
        <br/>
        <input type="submit" value="Alta" />
    </form>

<?php
    } else {
        // LÓGICA: PROCESAR EL INSERT EN MYSQL
        
        // 1. Conexión
        $link = mysqli_connect("localhost", "root", "");
        if (!$link) {
            die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("<div class='mensaje error'>Error: No se encuentra la base de datos 'GestionMat'.</div>");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $concepto = $_POST['varconcepto'];
        $fecha = $_POST['varfecha'];
        $cantidad = $_POST['varcantidad'];

        // 4. Construcción de la Query (Concatenación Segura)
        $query = "INSERT INTO `Movimiento` (";
        // Columnas
        $query .= "id";
        $query .= ", concepto";
        $query .= ", fecha";
        $query .= ", cantidad";
        $query .= ") VALUES (";
        
        // Valores (Variables PHP concatenadas)
        $query .= "'" . $id . "'";
        $query .= ", '" . $concepto . "'";
        $query .= ", '" . $fecha . "'";
        $query .= ", '" . $cantidad . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<div class='mensaje exito'><h2>Registro insertado correctamente en Movimiento.</h2></div>";
        } else {
            echo "<div class='mensaje error'><h2>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p></div>";
        }

        mysqli_close($link);
        
        echo "<a href='Movimiento.php' class='volver'>&larr; Volver al formulario</a>";
    }
?>
</div>
</body>
</html>




