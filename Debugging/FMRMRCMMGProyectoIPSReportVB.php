

<html>
<head>
    <title>Gestión de Red Bancaria</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Red Bancaria</h1>
    
    <form action="Red Bancaria.php" method="post">
        
        <div class="campo">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required />
        </div>

        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $nombre = $_POST['varnombre'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Red Bancaria (";
        // (Lista de nombres de columnas)
        $query .= "id";
        $query .= ", nombre";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "id" . "'";
        $query .= ", '$" . "nombre" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Red Bancaria.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Red Bancaria.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




<html>
<head>
    <title>Gestión de Banco</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Banco</h1>
    
    <form action="Banco.php" method="post">
        
        <div class="campo">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required />
        </div>

        <div class="campo">
            <label for="varnombre">nombre:</label>
            <input type="text" name="varnombre" id="varnombre"  required />
        </div>
        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $nombre = $_POST['varnombre'];
        $porcentaje = $_POST['varporcentaje'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Banco (";
        // (Lista de nombres de columnas)
        $query .= "id";
        $query .= ", nombre";
        $query .= ", porcentaje";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "id" . "'";
        $query .= ", '$" . "nombre" . "'";
        $query .= ", '$" . "porcentaje" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Banco.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Banco.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




<html>
<head>
    <title>Gestión de Cajero</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Cajero</h1>
    
    <form action="Cajero.php" method="post">
        
        <div class="campo">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required />
        </div>

        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $saldoDisponible = $_POST['varsaldoDisponible'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Cajero (";
        // (Lista de nombres de columnas)
        $query .= "id";
        $query .= ", saldoDisponible";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "id" . "'";
        $query .= ", '$" . "saldoDisponible" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Cajero.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Cajero.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




<html>
<head>
    <title>Gestión de Cuenta</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varnumero'])) {
?>
    <h1 class="titulo-entidad">Cuenta</h1>
    
    <form action="Cuenta.php" method="post">
        
        <div class="campo">
            <label for="varnumero">numero (PK):</label>
            <input type="text" name="varnumero" id="varnumero" required />
        </div>

        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $numero = $_POST['varnumero'];
        $saldo = $_POST['varsaldo'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Cuenta (";
        // (Lista de nombres de columnas)
        $query .= "numero";
        $query .= ", saldo";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "numero" . "'";
        $query .= ", '$" . "saldo" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Cuenta.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Cuenta.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




<html>
<head>
    <title>Gestión de Tarjeta</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Tarjeta</h1>
    
    <form action="Tarjeta.php" method="post">
        
        <div class="campo">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required />
        </div>

        <div class="campo">
            <label for="varsaldoActual">saldoActual:</label>
            <input type="number" name="varsaldoActual" id="varsaldoActual" step='any' required />
        </div>
        <div class="campo">
            <label for="varfechaCaducidad">fechaCaducidad:</label>
            <input type="date" name="varfechaCaducidad" id="varfechaCaducidad"  required />
        </div>
        <div class="campo">
            <label for="varimporteMaximo">importeMaximo:</label>
            <input type="number" name="varimporteMaximo" id="varimporteMaximo" step='any' required />
        </div>
        <div class="campo">
            <label for="varestado">estado:</label>
            <input type="number" name="varestado" id="varestado"  required />
        </div>
        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $saldoActual = $_POST['varsaldoActual'];
        $fechaCaducidad = $_POST['varfechaCaducidad'];
        $importeMaximo = $_POST['varimporteMaximo'];
        $estado = $_POST['varestado'];
        $pin = $_POST['varpin'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Tarjeta (";
        // (Lista de nombres de columnas)
        $query .= "id";
        $query .= ", saldoActual";
        $query .= ", fechaCaducidad";
        $query .= ", importeMaximo";
        $query .= ", estado";
        $query .= ", pin";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "id" . "'";
        $query .= ", '$" . "saldoActual" . "'";
        $query .= ", '$" . "fechaCaducidad" . "'";
        $query .= ", '$" . "importeMaximo" . "'";
        $query .= ", '$" . "estado" . "'";
        $query .= ", '$" . "pin" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Tarjeta.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Tarjeta.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




<html>
<head>
    <title>Gestión de Movimiento</title>
    <style>
        /* Estilos generales */
        body { font-family: sans-serif; background-color: #B8D1F1; padding: 20px; }
        
        /* Estilos dinámicos desde el modelo DSL */
        h1.titulo-entidad {
            color: ;
            font-family: 'Arial';
            font-size: ;
            text-align: left;
            margin-bottom: 30px;
        }

        /* Estilo básico de formulario */
        form { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: 0 auto; }
        div.campo { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input { padding: 5px; width: 250px; }
        input[type="submit"] { 
            background-color: #4CAF50; color: white; border: none; 
            padding: 10px 20px; cursor: pointer; width: auto; 
        }
    </style>
</head>
<body>

<?php
    // COMPROBACIÓN: ¿Se ha enviado el formulario?
    // Verificamos si existe la variable de la PK en el POST
    if (!isset($_POST['varid'])) {
?>
    <h1 class="titulo-entidad">Movimiento</h1>
    
    <form action="Movimiento.php" method="post">
        
        <div class="campo">
            <label for="varid">id (PK):</label>
            <input type="text" name="varid" id="varid" required />
        </div>

        <div class="campo">
            <label for="varconcepto">concepto:</label>
            <input type="text" name="varconcepto" id="varconcepto"  required />
        </div>
        <div class="campo">
            <label for="varfecha">fecha:</label>
            <input type="date" name="varfecha" id="varfecha"  required />
        </div>
        <div class="campo">
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
            die("Error de conexión: " . mysqli_connect_error());
        }
        
        // 2. Selección de BD
        if (!mysqli_select_db($link, "GestionMat")) {
            die("Error: No se encuentra la base de datos 'GestionMat'. Asegúrate de haber ejecutado el SQL.");
        }

        // 3. Recogida de datos del POST
        $id = $_POST['varid'];
        $concepto = $_POST['varconcepto'];
        $fecha = $_POST['varfecha'];
        $cantidad = $_POST['varcantidad'];

        // 4. Construcción de la Query
        $query = "INSERT INTO Movimiento (";
        // (Lista de nombres de columnas)
        $query .= "id";
        $query .= ", concepto";
        $query .= ", fecha";
        $query .= ", cantidad";
        $query .= ") VALUES (";
        
        // (Lista de valores)
        // Nota: Ponemos comillas simples '$var' a todo para simplificar. MySQL hace la conversión implícita.
        $query .= "'$" . "id" . "'";
        $query .= ", '$" . "concepto" . "'";
        $query .= ", '$" . "fecha" . "'";
        $query .= ", '$" . "cantidad" . "'";
        $query .= ")";

        // 5. Ejecución y Feedback
        if (mysqli_query($link, $query)) {
            echo "<h2>Registro insertado correctamente en Movimiento.</h2>";
        } else {
            echo "<h2 style='color:red'>Error al insertar: " . mysqli_error($link) . "</h2>";
            echo "<p>Query intentada: " . $query . "</p>";
        }

        mysqli_close($link);
        
        echo "<br><a href='Movimiento.php'>Volver al formulario</a>";
    }
?>
</body>
</html>




