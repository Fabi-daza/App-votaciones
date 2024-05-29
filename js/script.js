function validarCampos() {
    $(document).off('click', '#button').on('click', '#button', function(event) {
        event.preventDefault();
        var name = $('#name');
        var alias = $('#alias');
        var rut = $('#rut');
        var email = $('#email');
        var region = $('#region');
        var comuna = $('#comuna');
        var candidato = $('#candidato');

        if ($.trim(name.val()) == "") {
            alert("Por favor ingresa tu nombre");
            return;
        }

        if ($.trim(alias.val()) == "") {
            alert("Debes ingresar un alias");
            return;
        }

        let regex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+$/;
        if (!regex.test(alias.val())) {
            alert("Tu alias debe contener letras y números");
            return;
        }

        if (alias.val().length < 5) {
            alert("El alias debe tener al menos 5 caracteres");
            return;
        }

        function formatearRut(rut) {
            rut = rut.replace(/[^0-9kK]/g, '');
            if (rut.length < 8 || rut.length > 9) {
                alert("RUT invalido");
                return rut;
            } else {
                rut = rut.substring(0, rut.length - 1) + "-" + rut.charAt(rut.length - 1);
            }
            return rut;
        }

        if ($.trim(rut.val()) == "") {
            alert("Debes ingresar un rut");
            return;
        } else {
            rut.val(formatearRut(rut.val()));
        }

        function validarEmail(email) {
            const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return regex.test(email);
        }

        if (email.val().trim() === "") {
            alert("Debes ingresar un Email");
            return;
        } else {
            if (!validarEmail(email.val())) {
                alert("El email no es válido");
                return;
            }
        }

        if ($.trim(region.val()) == "") {
            alert("Debes ingresar una Region");
            return;
        }

        if ($.trim(comuna.val()) == "") {
            alert("Debes ingresar una Comuna");
            return;
        }

        if ($.trim(candidato.val()) == "") {
            alert("Debes ingresar un Candidato");
            return;
        }

        var checkedCheckboxes = $('input[type="checkbox"]:checked');
        if (checkedCheckboxes.length < 2) {
            alert("Debes seleccionar al menos 2 opciones");
            return;
        } else {
            optionsSelected = [];
            checkedCheckboxes.each(function() {
                optionsSelected.push($(this).val());
            });
            console.log(optionsSelected);
        }

        sendForm(name.val(), alias.val(), rut.val(), email.val(), region.val(), comuna.val(), candidato.val(), optionsSelected);
    });
}

function sendForm(name, alias, rut, email, region, comuna, candidato, optionsSelected) {
    $.ajax({
        url: 'php/votaciones.php',
        type: 'POST',
        data: {
            name: name,
            alias: alias,
            rut: rut,
            email: email,
            region: region,
            comuna: comuna,
            candidato: candidato,
            options: optionsSelected
        },
        success: function(response) {
            alert(response);
            $('#name').val('');
            $('#alias').val('');
            $('#rut').val('');
            $('#email').val('');
            $('#region').val('');
            $('#comuna').val('');
            $('#candidato').val('');
            $('input[type="checkbox"]').prop('checked', false);
        },
        error: function(xhr, status, error) {
            console.error(xhr);
            alert(`Ocurrió un error al enviar el formulario: ${error}`);
        }
    });
}

function getRegion() {
    $.ajax({
        url: 'php/data.php',
        type: 'GET',
        data: {
            table: 'regiones'
        },
        beforeSend: function() {
            $('#region').html('<option>Obteniendo regiones...</option>');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            $('#region').html('<option>Error al obtener regiones</option>');
            console.log(jqXHR);
        },
        success: function(response) {
            $('#region').html(response);
        }
    });
}

function getRegionSelect() {
    var regionSelect = $('#region').val();
    console.log("Región seleccionada: " + regionSelect);
    return regionSelect;
}

$(document).on('change', '#region', function() {
    var region_id = $('#region').val();
    getComuna(region_id);
});

function getComuna(region_id) {
    if (region_id != '') {
        $.ajax({
            url: 'php/data.php',
            type: 'GET',
            data: {
                table: 'comunas',
                region_id: region_id
            },
            beforeSend: function() {
                $('#comuna').html('<option>Obteniendo comunas...</option>');
            },
            error: function(jqXHR, textStatus, errorThrown) {
                $('#comuna').html('<option>Error al obtener comunas</option>');
                console.log(jqXHR);
            },
            success: function(response) {
                $('#comuna').html(response);
            }
        });
    }
}

function getCandidato() {
    $.ajax({
        url: 'php/data.php',
        type: 'GET',
        data: {
            table: 'candidato'
        },
        beforeSend: function() {
            $('#candidato').html('<option>Obteniendo candidatos...</option>');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            $('#candidato').html('<option>Error al obtener candidato</option>');
            console.log(jqXHR);
        },
        success: function(response) {
            $('#candidato').html(response);
        }
    });
}

$(document).ready(function() {
    getRegion();
    getCandidato();
    validarCampos();
});
