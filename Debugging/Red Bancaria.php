<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Red Bancaria</title>
    <link rel="stylesheet" href="estiloRed Bancaria.css">
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
            <li><a href="accede.php">accede</a></li>
            <li><a href="realiza.php">realiza</a></li>
          </ul>
    </nav>

    
        <div style='text-align:center; margin-bottom:20px; border-bottom:2px solid #ccc; padding:10px;'>
            <h1 style='color:#000000; font-family:"Tahoma"; font-size:18px; margin:0;'>
                SISTEMA RED BANCARIA
            </h1>
        </div>

    <div class="contenedor">
    
    <?php
        // --- CONEXIÓN BASE DE DATOS ---
        $link = mysqli_connect("localhost", "appuser", "1234", "", 3307);
        if (!$link) die("<div class='mensaje error'>Error de conexión: " . mysqli_connect_error() . "</div>");
        if (!mysqli_select_db($link, "redbancaria")) die("<div class='mensaje error'>Error DB: " . mysqli_error($link) . "</div>");

        // --- CONTROLADOR DE ACCIONES ---
        $action = isset($_GET['action']) ? $_GET['action'] : 'list';
        $msg = "";
        
        // --- LÓGICA GUARDAR (INSERT / UPDATE) ---
        if ($action == 'save' && $_SERVER['REQUEST_METHOD'] == 'POST') {
            $is_edit = isset($_POST['is_edit']) && $_POST['is_edit'] == '1';
            
            // Recoger PK
            $id = mysqli_real_escape_string($link, $_POST['varid']);
            
            // Recoger Atributos
                        $nombre = mysqli_real_escape_string($link, $_POST['varnombre']);
            
            if ($is_edit) {
                $query = "UPDATE `redBancaria` SET ";
                                $query .= "nombre = '$nombre'";
                                $query .= " WHERE id = '$id'";
                
                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Registro actualizado correctamente.</div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al actualizar: " . mysqli_error($link) . " <br>Query: " . $query . "</div>";
                }
            } else {
                $query = "INSERT INTO `redBancaria` (id";
                                $query .= ", nombre";
                                $query .= ") VALUES ('$id'";
                                $query .= ", '$nombre'";
                                $query .= ")";

                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Registro creado correctamente.</div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al crear: " . mysqli_error($link) . "</div>";
                }
            }
        }

        // --- LÓGICA ELIMINAR ---
        if ($action == 'delete' && isset($_GET['id'])) {
            $id = mysqli_real_escape_string($link, $_GET['id']);
            $query = "DELETE FROM `redBancaria` WHERE id = '$id'";
            if (mysqli_query($link, $query)) {
                $msg = "<div class='mensaje exito'>Registro eliminado.</div>";
            } else {
                $msg = "<div class='mensaje error'>Error al eliminar: " . mysqli_error($link) . "</div>";
            }
            $action = 'list';
        }

        if ($msg != "") echo $msg;
    ?>

    <?php 
    if ($action == 'list') { 
    ?>
        <h2 class="titulo-pagina">
            Red Bancaria
        </h2>
        <a href="?action=form" class="btn btn-success">NUEVO +</a>
        <table>
            <thead>
                <tr>
                    <th>id</th>
                                        <th>nombre</th>
                                        <th style="text-align:right;">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $res = mysqli_query($link, "SELECT * FROM `redBancaria`");
                while ($row = mysqli_fetch_assoc($res)) {
                    echo "<tr>";
                    echo "<td>" . $row['id'] . "</td>";
                                        echo "<td>" . $row['nombre'] . "</td>";
                                        echo "<td style='text-align:right;'>";
                    echo "<a href='?action=form&id=" . $row['id'] . "' class='btn btn-warning' style='margin-right:5px;'>Editar</a>";
                    echo "<a href='?action=delete&id=" . $row['id'] . "' class='btn btn-danger' onclick='return confirm(\"¿Seguro?\");'>Eliminar</a>";
                    echo "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>

    <?php 
    } elseif ($action == 'form') { 
        $is_edit = false;
        
        $val_id = "";
                $val_nombre = "";
        
        if (isset($_GET['id'])) {
            $is_edit = true;
            $id = mysqli_real_escape_string($link, $_GET['id']);
            $res = mysqli_query($link, "SELECT * FROM `redBancaria` WHERE id='$id'");
            if ($row = mysqli_fetch_assoc($res)) {
                $val_id = $row['id'];
                                $val_nombre = $row['nombre'];
                            }
        }
    ?>
        <h2 class="titulo-pagina">
            <?php echo $is_edit ? "Editar Registro" : "Nuevo Registro"; ?>
            <a href="?action=list" class="btn btn-primary">Volver al Listado</a>
        </h2>

        <form action="?action=save" method="post">
            <input type="hidden" name="is_edit" value="<?php echo $is_edit ? '1' : '0'; ?>">

            <div class="form-group">
                <label for="varid">id (PK)</label>
                <input type="text" name="varid" id="varid" 
                       value="<?php echo $val_id; ?>" 
                       <?php echo $is_edit ? 'readonly' : 'required'; ?> />
            </div>

                        <style>
                label.lbl-nombre {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varnombre" class="lbl-nombre">nombre</label>
                <input type="text" name="varnombre" id="varnombre" 
                       value="<?php echo $val_nombre; ?>"
                        required />
            </div>
            
            <input type="submit" class="btn btn-success" style="width:100%; margin-top:10px;" 
                   value="<?php echo $is_edit ? 'Actualizar Datos' : 'Guardar Nuevo'; ?>" />
        </form>
    <?php 
    } // Fin del bloque formulario
    
    mysqli_close($link);
    ?>
    
    </div>
</body>
</html>
