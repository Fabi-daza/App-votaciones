<?php
include ('db_conexion.php');

if ($_GET['table']) {
    if ($_GET['table'] == 'regiones') {
        $sql = "SELECT * FROM regiones ORDER BY id ASC";
        $rs = mysqli_query($_conn, $sql);
        if (mysqli_num_rows($rs) > 0) {
            echo '<option value="">Seleccionar Región</option>';
            while ($row = mysqli_fetch_array($rs, MYSQLI_ASSOC)) {
                echo '<option value="' . $row['id'] . '">' . $row['nombre'] . '</option>';
            }
        }
    }
}

if ($_GET['table'] == 'comunas') {
    if ($_GET['region_id']) {
        $region_id = $_GET['region_id'];
        if (!($region_id)){
            echo '<option value="">No se encontraron comunas, selecciona la región</option>';
        } else {
            $sql = "SELECT * FROM comunas WHERE comunas.region_id = $region_id ORDER BY id ASC" ;
            $rs = mysqli_query($_conn, $sql);
            if (mysqli_num_rows($rs) > 0) {
                echo '<option value="">Seleccionar Comuna</option>';
                while ($row = mysqli_fetch_array($rs, MYSQLI_ASSOC)) {
                    echo '<option value="' . $row['id'] .'">' . $row['nombre'] . '</option>';
                }
            }
        }
    }
}

if ($_GET['table']) {
    if ($_GET['table'] == 'candidato') {
        $sql = "SELECT * FROM candidatos ORDER BY id ASC";
        $rs = mysqli_query($_conn, $sql);
        if (mysqli_num_rows($rs) > 0) {
            echo '<option value="">Seleccionar Candidato</option>';
            while ($row = mysqli_fetch_array($rs, MYSQLI_ASSOC)) {
                echo '<option value="' . $row['id'] . '">' . $row['nombre'] . '</option>';
            }
        }
    }
}
?>