$(function() {
    $(document).ready(function() {
        window.addEventListener('message', function(event) {
            var i = event.data;
            if (i.openHtlm) {
                $('.container-fluid').css('display', 'block');
            } else if (i.openHtlm === false) {
                $('.container-fluid').css('display', 'none');
            }
            if (i.Infos) {
                $('.player-name').css('display', 'block');
                ShowPlayerInfos(i.Infos.id ,i.Infos.name)
            } else if (i.Infos === false) {
                $('.player-name').css('display', 'none');
            }
        });
    })
})

ShowPlayerInfos = (function(id, playername) {
    $('.player-name').html('');
    $('.player-name').append(`
        <p>id: [<span style='color:#00ffff'>${id}</span>] name:[<span style='color:red'>${playername}</span>]</p>
    `);
})