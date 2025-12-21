<! DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de realiza</title>
    <link rel="stylesheet" href="estilorealiza.css">
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
        $link = mysqli_connect("localhost", "appuser", "1234", "", 3307);
        if (!$link) die("<div class='mensaje error'>Error de conexión:  " . mysqli_connect_error() . "</div>");
        if (!mysqli_select_db($link, "redbancaria")) die("<div class='mensaje error'>Error DB: " . mysqli_error($link) . "</div>");

        $action = isset($_GET['action']) ? $_GET['action'] : 'list';
        $msg = "";
        
        if ($action == 'save' && $_SERVER['REQUEST_METHOD'] == 'POST') {
            $pk1Val = mysqli_real_escape_string($link, $_POST['tarjeta_FK']);
            $pk2Val = mysqli_real_escape_string($link, $_POST['movimiento_FK']);

            $is_edit = isset($_POST['is_edit']) && $_POST['is_edit'] == '1';

            if ($is_edit) {
                $old_id1 = mysqli_real_escape_string($link, $_POST['old_tarjeta_FK']);
                $old_id2 = mysqli_real_escape_string($link, $_POST['old_movimiento_FK']);
                
                $query = "DELETE FROM `realiza` WHERE tarjeta_FK = '$old_id1' AND movimiento_FK = '$old_id2'";
                mysqli_query($link, $query);
                
                $query = "INSERT INTO `realiza` (tarjeta_FK, movimiento_FK) VALUES ('$pk1Val', '$pk2Val')";
                
                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Relación actualizada correctamente. </div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al actualizar:  " . mysqli_error($link) . "</div>";
                }
            } else {
                $query = "INSERT INTO `realiza` (tarjeta_FK, movimiento_FK) VALUES ('$pk1Val', '$pk2Val')";

                if (mysqli_query($link, $query)) {
                    $msg = "<div class='mensaje exito'>Relación creada correctamente.</div>";
                    $action = 'list';
                } else {
                    $msg = "<div class='mensaje error'>Error al crear: " . mysqli_error($link) . "</div>";
                }
            }
        }

        if ($action == 'delete' && isset($_GET['id1']) && isset($_GET['id2'])) {
            $id1 = mysqli_real_escape_string($link, $_GET['id1']);
            $id2 = mysqli_real_escape_string($link, $_GET['id2']);
            $query = "DELETE FROM `realiza` WHERE tarjeta_FK = '$id1' AND movimiento_FK = '$id2'";
            if (mysqli_query($link, $query)) {
                $msg = "<div class='mensaje exito'>Relación eliminada. </div>";
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
            <span>realiza</span>
        </h2>
        <a href="? action=form" class="btn btn-success">NUEVO +</a>
        <table>
            <thead>
                <tr>
                    <th>Tarjeta</th>
                    <th>Movimiento</th>
                    <th style="text-align: right;">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $res = mysqli_query($link, "SELECT * FROM `realiza`");
                while ($row = mysqli_fetch_assoc($res)) {
                    echo "<tr>";
                    echo "<td>" . $row['tarjeta_FK'] .  "</td>";
                    echo "<td>" . $row['movimiento_FK'] . "</td>";
                    echo "<td style='text-align: right;'>";
                    echo "<a href='?action=form&id1=" . $row['tarjeta_FK'] . "&id2=" . $row['movimiento_FK'] . "' class='btn btn-warning' style='margin-right: 5px;'>Editar</a>";
                    echo "<a href='?action=delete&id1=" . $row['tarjeta_FK'] . "&id2=" . $row['movimiento_FK'] . "' class='btn btn-danger' onclick='return confirm(\"¿Seguro?\");'>Eliminar</a>";
                    echo "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    <?php 
    }
    ?>

    <?php 
    if ($action == 'form') { 
        $is_edit = false;
        $val_tarjeta_FK = "";
        $val_movimiento_FK = "";
        $old_val_tarjeta_FK = "";
        $old_val_movimiento_FK = "";

        if (isset($_GET['id1']) && isset($_GET['id2'])) {
            $is_edit = true;
            $id1 = mysqli_real_escape_string($link, $_GET['id1']);
            $id2 = mysqli_real_escape_string($link, $_GET['id2']);
            $res = mysqli_query($link, "SELECT * FROM `realiza` WHERE tarjeta_FK='$id1' AND movimiento_FK='$id2'");
            if ($row = mysqli_fetch_assoc($res)) {
                $val_tarjeta_FK = $row['tarjeta_FK'];
                $val_movimiento_FK = $row['movimiento_FK'];
                $old_val_tarjeta_FK = $row['tarjeta_FK'];
                $old_val_movimiento_FK = $row['movimiento_FK'];
            }
        }
    ?>
        <h2 class="titulo-pagina">
            <span><?php echo $is_edit ? "Editar Relación" : "Nueva Relación"; ?></span>
            <a href="?action=list" class="btn btn-primary">Volver al Listado</a>
        </h2>

        <form action="? action=save" method="post">
            <input type="hidden" name="is_edit" value="<?php echo $is_edit ? '1' : '0'; ?>">
            <?php if ($is_edit) { ?>
                <input type="hidden" name="old_tarjeta_FK" value="<?php echo $old_val_tarjeta_FK; ?>">
                <input type="hidden" name="old_movimiento_FK" value="<?php echo $old_val_movimiento_FK; ?>">
            <?php } ?>

            <div class="form-group">
                <label for="tarjeta_FK">Tarjeta</label>
                <select name="tarjeta_FK" id="tarjeta_FK" required>
                    <option value="">-- Seleccionar --</option>
                    <?php
                    $res = mysqli_query($link, "SELECT id FROM `tarjeta`");
                    while ($row = mysqli_fetch_assoc($res)) {
                        $selected = ($row['id'] == $val_id) ? 'selected' : '';
                        echo "<option value='" . $row['id'] . "' $selected>" . $row['id'] .  "</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
                <label for="movimiento_FK">Movimiento</label>
                <select name="movimiento_FK" id="movimiento_FK" required>
                    <option value="">-- Seleccionar --</option>
                    <?php
                    $res = mysqli_query($link, "SELECT id FROM `movimiento`");
                    while ($row = mysqli_fetch_assoc($res)) {
                        $selected = ($row['id'] == $val_id) ? 'selected' : '';
                        echo "<option value='" . $row['id'] . "' $selected>" . $row['id'] . "</option>";
                    }
                    ?>
                </select>
            </div>

            <input type="submit" class="btn btn-success" style="width: 100%; margin-top: 10px;" 
                   value="<?php echo $is_edit ? 'Actualizar Relación' : 'Guardar Nueva'; ?>" />
        </form>
    <?php 
    }
    
    mysqli_close($link);
    ?>
    
    </div>
</body>
</html>
