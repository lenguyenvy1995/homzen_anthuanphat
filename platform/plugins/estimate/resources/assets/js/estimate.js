$(document).ready(function () {
    $('#btn-estimate').on('click', function (e) {
        e.preventDefault();

        $.ajax({
            url: '/estimate/calculate',
            method: 'POST',
            data: {
                _token: $('meta[name="csrf-token"]').attr('content'),
                width: $('#width').val(),
                length: $('#length').val(),

                house_type_id: $('#house_type_id').val(), // 🔴 BỔ SUNG
                construction_type_id: $('#construction_type_id').val(),
                floor_id: $('#floor_id').val(),
                foundation_id: $('#foundation_id').val(),
                roof_id: $('#roof_id').val(),
            },
            success: function (res) {
                if (!res.success) return;

                $('#estimate-result').show();

                let html = '';
                res.data.items.forEach(function (item) {
                    html += `<li><span>${item.label}</span><strong>${item.value}</strong></li>`;
                });

                html += `<li style="border-top:1px solid #eee;padding-top:8px">
                <span><b>TỔNG CHI PHÍ</b></span>
                <strong>${res.data.formatted_total_price}</strong>
            </li>`;

                $('#estimate-result ul').html(html);
            },
            error: function () {
                alert('Vui lòng kiểm tra lại dữ liệu!');
            }
        });
    });
});