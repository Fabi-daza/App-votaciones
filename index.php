<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>App Votaciones</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <form id="form" class="container">
        <h1>Formulario de votación</h1>
        <div class="question">
            <label for=""> Nombre y apellido</label>
            <input type="text" name="" id="name" placeholder="Ingresa tu nombre*">
        </div>
        <div class="question">
            <label for="">Alias</label>
            <input type="text" name="" id="alias" placeholder="Ingresa un Alias*">
        </div>
        <div class="question">
            <label for="">RUT</label>
            <input type="text" name="" id="rut" placeholder="Ingresa tu RUT*">
        </div>
        <div class="question">
            <label for="">Email</label>
            <input type="email" name="" id="email" placeholder="Ingresa tu Email">
        </div>
        <div class="question">
            <label for="">Region</label>
            <select name="region" id="region"></select>
        </div>
        <div class="question">
            <label for="">Comuna</label>
            <select name="comuna" id="comuna"></select>
        </div>
        <div class="question">
            <label for="">Candidato</label>
            <select name="candidato" id="candidato"></select>
        </div>
        <div class="question">
            <label for="">Cómo se entero de nosotros</label>
            <div class="options">
                <div class="option">
                    <input type="checkbox" name="checkbox" value="Web" id="checkbox1">
                    <label for="checkbox1">Web</label>
                </div>
                <div class="option">
                    <input type="checkbox" name="checkbox" value="Tv" id="checkbox2">
                    <label for="checkbox2">Tv</label>
                </div>
                <div class="option">
                    <input type="checkbox" name="checkbox" value="Redes Sociales" id="checkbox3">
                    <label for="checkbox3">Redes Sociales</label>
                </div>
                <div class="option">
                    <input type="checkbox" name="checkbox" value="Amigo" id="checkbox4">
                    <label for="checkbox4">Amigo</label>
                </div>
            </div>
        </div>
        <button type="submit" id="button">Votar</button>

    </form>
    <script src="jquery/jquery-3.7.1.min.js"></script>
    <script src="js/script.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            getRegion();
            getCandidato();
            validarCampos();
        });
    </script>
</body>
</html>
