<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Tarjeta</title>
    <link rel="stylesheet" href="estiloTarjeta.css">
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
                        $saldoActual = mysqli_real_escape_string($link, $_POST['varsaldoActual']);
                        $fechaCaducidad = mysqli_real_escape_string($link, $_POST['varfechaCaducidad']);
                        $importeMaximo = mysqli_real_escape_string($link, $_POST['varimporteMaximo']);
                        $estado = mysqli_real_escape_string($link, $_POST['varestado']);
                        $pin = mysqli_real_escape_string($link, $_POST['varpin']);
            
            if ($is_edit) {
                $query = "UPDATE `tarjeta` SET ";
                                $query .= "saldoActual = '$saldoActual'";
                                $query .= ", ";
                                $query .= "fechaCaducidad = '$fechaCaducidad'";
                                $query .= ", ";
                                $query .= "importeMaximo = '$importeMaximo'";
                                $query .= ", ";
                                $query .= "estado = '$estado'";
                                $query .= ", ";
                                $query .= "pin = '$pin'";
                                $query .= " WHERE id = '$id'";
                
                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Registro actualizado correctamente.</div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al actualizar: " . mysqli_error($link) . " <br>Query: " . $query . "</div>";
                }
            } else {
                $query = "INSERT INTO `tarjeta` (id";
                                $query .= ", saldoActual";
                                $query .= ", fechaCaducidad";
                                $query .= ", importeMaximo";
                                $query .= ", estado";
                                $query .= ", pin";
                                $query .= ") VALUES ('$id'";
                                $query .= ", '$saldoActual'";
                                $query .= ", '$fechaCaducidad'";
                                $query .= ", '$importeMaximo'";
                                $query .= ", '$estado'";
                                $query .= ", '$pin'";
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
            $query = "DELETE FROM `tarjeta` WHERE id = '$id'";
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
            Tarjeta
        </h2>
        <a href="?action=form" class="btn btn-success">NUEVO +</a>
        <table>
            <thead>
                <tr>
                    <th>id</th>
                                        <th>saldoActual</th>
                                        <th>fechaCaducidad</th>
                                        <th>importeMaximo</th>
                                        <th>estado</th>
                                        <th>pin</th>
                                        <th style="text-align:right;">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $res = mysqli_query($link, "SELECT * FROM `tarjeta`");
                while ($row = mysqli_fetch_assoc($res)) {
                    echo "<tr>";
                    echo "<td>" . $row['id'] . "</td>";
                                        echo "<td>" . $row['saldoActual'] . "</td>";
                                        echo "<td>" . $row['fechaCaducidad'] . "</td>";
                                        echo "<td>" . $row['importeMaximo'] . "</td>";
                                        echo "<td>" . $row['estado'] . "</td>";
                                        echo "<td>" . $row['pin'] . "</td>";
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
                $val_saldoActual = "";
                $val_fechaCaducidad = "";
                $val_importeMaximo = "";
                $val_estado = "";
                $val_pin = "";
        
        if (isset($_GET['id'])) {
            $is_edit = true;
            $id = mysqli_real_escape_string($link, $_GET['id']);
            $res = mysqli_query($link, "SELECT * FROM `tarjeta` WHERE id='$id'");
            if ($row = mysqli_fetch_assoc($res)) {
                $val_id = $row['id'];
                                $val_saldoActual = $row['saldoActual'];
                                $val_fechaCaducidad = $row['fechaCaducidad'];
                                $val_importeMaximo = $row['importeMaximo'];
                                $val_estado = $row['estado'];
                                $val_pin = $row['pin'];
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
                label.lbl-saldoActual {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varsaldoActual" class="lbl-saldoActual">saldoActual</label>
                <input type="number" name="varsaldoActual" id="varsaldoActual" 
                       value="<?php echo $val_saldoActual; ?>"
                       step='any' required />
            </div>
                        <style>
                label.lbl-fechaCaducidad {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varfechaCaducidad" class="lbl-fechaCaducidad">fechaCaducidad</label>
                <input type="date" name="varfechaCaducidad" id="varfechaCaducidad" 
                       value="<?php echo $val_fechaCaducidad; ?>"
                        required />
            </div>
                        <style>
                label.lbl-importeMaximo {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varimporteMaximo" class="lbl-importeMaximo">importeMaximo</label>
                <input type="number" name="varimporteMaximo" id="varimporteMaximo" 
                       value="<?php echo $val_importeMaximo; ?>"
                       step='any' required />
            </div>
                        <style>
                label.lbl-estado {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varestado" class="lbl-estado">estado</label>
                <input type="number" name="varestado" id="varestado" 
                       value="<?php echo $val_estado; ?>"
                        required />
            </div>
                        <style>
                label.lbl-pin {
                    text-align: left;
                    color: #C57F0E;
                    font-family: 'Arial', sans-serif;
                    font-size: 12px;
                }
            </style>
            <div class="form-group">
                <label for="varpin" class="lbl-pin">pin</label>
                <input type="number" name="varpin" id="varpin" 
                       value="<?php echo $val_pin; ?>"
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
