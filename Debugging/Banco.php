<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Banco</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #FF913D; /* Color del background del Portal */
            margin: 0; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
        }
        .contenedor { width: 100%; max-width: 800px; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        .menu-entidades {
            margin-bottom: 20px;
            background: #f6f6f6;
            padding: 12px 15px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.04);
        }
        .menu-entidades ul { list-style: none; margin: 0; padding: 0; display: flex; flex-wrap: wrap;}
        .menu-entidades li { margin-right: 15px; }
        .menu-entidades a { color: #1a2980; text-decoration: none; font-weight: bold;}
        .menu-entidades a:hover { text-decoration: underline; }
        /* Estilo específico para el título de esta Página (sacado del elemento Page) */
        h2.titulo-pagina {
            text-align: center;
            color: #7E0EC5;
            font-family: 'Verdana', sans-serif;
            font-size: 14px;
            margin-top: 0; padding-bottom: 10px; border-bottom: 1px solid #eee;
        }

        /* Estilos de formulario */
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
    <nav class="menu-entidades">
      <ul>
            <li><a href="Red Bancaria.php">Red Bancaria</a></li>
            <li><a href="Banco.php">Banco</a></li>
            <li><a href="Cajero.php">Cajero</a></li>
            <li><a href="Cuenta.php">Cuenta</a></li>
            <li><a href="Tarjeta.php">Tarjeta</a></li>
            <li><a href="Movimiento.php">Movimiento</a></li>
          </ul>
    </nav>
    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#FFFFFF; font-family:"Tahoma"; font-size:18px; margin:0;'>
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

                <style>
                    label.estilo {
                        text-align: left;
                        color: #C57F0E;
                        font-family: 'Arial', sans-serif;
                        font-size: 12px;
                    }
            </style>
            <div class="form-group">
                <label for="varnombre" class="estilo">nombre</label>
                <input type="text" name="varnombre" id="varnombre"  required />
            </div>
                <style>
                    label.estilo {
                        text-align: left;
                        color: #C57F0E;
                        font-family: 'Arial', sans-serif;
                        font-size: 12px;
                    }
            </style>
            <div class="form-group">
                <label for="varporcentaje" class="estilo">porcentaje</label>
                <input type="number" name="varporcentaje" id="varporcentaje"  required />
            </div>
                <input type="submit" value="Dar de Alta" />
        </form>

    <?php
        } else {
            // PROCESAMIENTO PHP
            $link = mysqli_connect(
                    "localhost",
                    "appuser", // usuario
                    "1234", // password
                    "", // nombre base de datos vacio porque se setea despues
                    3307 // puerto
                );
            if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
            
            if (!mysqli_select_db($link, "redbancaria")) {
                die("<div class='mensaje error'>Error: No existe la base de datos redbancaria</div>");
            }

            $id = $_POST['varid'];
                $nombre = $_POST['varnombre'];
                $porcentaje = $_POST['varporcentaje'];
    
            $query = "INSERT INTO `banco` (";
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
