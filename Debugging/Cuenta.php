<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Cuenta</title>
    <link rel="stylesheet" href="estiloCuenta.css">
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
            $numero = mysqli_real_escape_string($link, $_POST['varnumero']);
            
            // Recoger Atributos
                        $saldo = mysqli_real_escape_string($link, $_POST['varsaldo']);
            
            if ($is_edit) {
                $query = "UPDATE `cuenta` SET ";
                                $query .= "saldo = '$saldo'";
                                $query .= " WHERE numero = '$numero'";
                
                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Registro actualizado correctamente.</div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al actualizar: " . mysqli_error($link) . " <br>Query: " . $query . "</div>";
                }
            } else {
                $query = "INSERT INTO `cuenta` (numero";
                                $query .= ", saldo";
                                $query .= ") VALUES ('$numero'";
                                $query .= ", '$saldo'";
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
            $query = "DELETE FROM `cuenta` WHERE numero = '$id'";
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
            Cuenta
        </h2>
        <a href="?action=form" class="btn btn-success">NUEVO +</a>
        <table>
            <thead>
                <tr>
                    <th>numero</th>
                                        <th>saldo</th>
                                        <th style="text-align:right;">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $res = mysqli_query($link, "SELECT * FROM `cuenta`");
                while ($row = mysqli_fetch_assoc($res)) {
                    echo "<tr>";
                    echo "<td>" . $row['numero'] . "</td>";
                                        echo "<td>" . $row['saldo'] . "</td>";
                                        echo "<td style='text-align:right;'>";
                    echo "<a href='?action=form&id=" . $row['numero'] . "' class='btn btn-warning' style='margin-right:5px;'>Editar</a>";
                    echo "<a href='?action=delete&id=" . $row['numero'] . "' class='btn btn-danger' onclick='return confirm(\"¿Seguro?\");'>Eliminar</a>";
                    echo "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>

    <?php 
    } elseif ($action == 'form') { 
        $is_edit = false;
        
        $val_numero = "";
                $val_saldo = "";
        
        if (isset($_GET['id'])) {
            $is_edit = true;
            $id = mysqli_real_escape_string($link, $_GET['id']);
            $res = mysqli_query($link, "SELECT * FROM `cuenta` WHERE numero='$id'");
            if ($row = mysqli_fetch_assoc($res)) {
                $val_numero = $row['numero'];
                                $val_saldo = $row['saldo'];
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
                <label for="varnumero">numero (PK)</label>
                <input type="text" name="varnumero" id="varnumero" 
                       value="<?php echo $val_numero; ?>" 
                       <?php echo $is_edit ? 'readonly' : 'required'; ?> />
            </div>

                        <style>
                label.lbl-saldo {
                    text-align: right;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varsaldo" class="lbl-saldo">saldo</label>
                <input type="number" name="varsaldo" id="varsaldo" 
                       value="<?php echo $val_saldo; ?>"
                       step='any' required />
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
