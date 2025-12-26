<section class="tivatech-estimate py-5">
    <div class="container">
        <div id="estimate-box" class="tivatech-estimate__box bg-white rounded-4 shadow-sm p-4 p-lg-5">

            <h2 class="tivatech-estimate__title ">
                Dự toán chi phí xây nhà
            </h2>

            <div class="tivatech-estimate__form">
                <div class="row g-4">

                    <div class="col-md-6">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label">
                                <svg class="svg-inline--fa fa-circle-dot" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="circle-dot" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>
                                Chọn loại nhà
                            </label>
                            <select id="house_type_id" class="tivatech-estimate__control form-select">
                                @foreach ($houseTypes as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label"> <svg class="svg-inline--fa fa-circle-dot"
                                    aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle-dot"
                                    role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                                    data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>

                                Hình thức xây dựng
                            </label>
                            <select id="construction_type_id" class="tivatech-estimate__control form-select">
                                @foreach ($constructionTypes as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label"> <svg class="svg-inline--fa fa-circle-dot"
                                    aria-hidden="true" focusable="false" data-prefix="fas" data-icon="circle-dot"
                                    role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                                    data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>

                                Chiều rộng (m)
                            </label>
                            <input type="number" id="width" class="tivatech-estimate__control form-control"
                                placeholder="Nhập chiều rộng">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label">
                                <svg class="svg-inline--fa fa-circle-dot" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="circle-dot" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>
                                Chiều dài (m)
                            </label>
                            <input type="number" id="length" class="tivatech-estimate__control form-control"
                                placeholder="Nhập chiều dài">
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label">
                                <svg class="svg-inline--fa fa-circle-dot" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="circle-dot" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>
                                Số tầng
                            </label>
                            <select id="floor_id" class="tivatech-estimate__control form-select">
                                @foreach ($floors as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label">
                                <svg class="svg-inline--fa fa-circle-dot" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="circle-dot" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>
                                Móng
                            </label>
                            <select id="foundation_id" class="tivatech-estimate__control form-select">
                                @foreach ($foundations as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="tivatech-estimate__group">
                            <label class="tivatech-estimate__label">
                                <svg class="svg-inline--fa fa-circle-dot" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="circle-dot" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="#ffd041"
                                        d="M0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256zM256 352C309 352 352 309 352 256C352 202.1 309 160 256 160C202.1 160 160 202.1 160 256C160 309 202.1 352 256 352z">
                                    </path>
                                </svg>
                                Mái
                            </label>
                            <select id="roof_id" class="tivatech-estimate__control form-select">
                                @foreach ($roofs as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-12 text-center mt-3">
                        <button id="btn-estimate"
                            class="tivatech-estimate__button btn btn-warning btn-lg px-5 fw-bold text-white">
                            <i class="fa fa-calculator me-2"></i>
                            TÍNH KẾT QUẢ
                        </button>
                    </div>

                </div>
            </div>

            {{-- RESULT --}}
            <div id="estimate-result" class="tivatech-estimate__result mt-5 d-none">

                <h4 class="fw-bold mb-3">
                    <i class="fa fa-chart-line text-warning me-2"></i>
                    Kết quả dự toán
                </h4>

                <ul class="list-group list-group-flush fs-6">
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Diện tích</span>
                        <strong><span id="rs-area"></span> m²</strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Đơn giá / m²</span>
                        <strong id="rs-base-price"></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Hệ số tầng</span>
                        <strong id="rs-floor"></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Hệ số móng</span>
                        <strong id="rs-foundation"></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Hệ số mái</span>
                        <strong id="rs-roof"></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between fs-5">
                        <strong>TỔNG TIỀN</strong>
                        <strong class="text-danger" id="rs-total"></strong>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</section>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const btn = document.getElementById("btn-estimate");

        if (!btn) return;

        btn.addEventListener("click", function() {
            const width = parseFloat(document.getElementById("width").value) || 0;
            const length = parseFloat(document.getElementById("length").value) || 0;

            const area = width * length;

            // TODO: Lấy hệ số thật từ DB nếu cần
            const basePrice = 5000000;
            const floorRatio = 1.2;
            const foundationRatio = 1.1;
            const roofRatio = 1.05;

            const total = area * basePrice * floorRatio * foundationRatio * roofRatio;

            // Hiển thị kết quả
            document.getElementById("rs-area").textContent = area.toFixed(2);
            document.getElementById("rs-base-price").textContent = basePrice.toLocaleString() + ' VNĐ';
            document.getElementById("rs-floor").textContent = floorRatio;
            document.getElementById("rs-foundation").textContent = foundationRatio;
            document.getElementById("rs-roof").textContent = roofRatio;
            document.getElementById("rs-total").textContent = total.toLocaleString() + ' VNĐ';

            // Show result
            document.getElementById("estimate-result").classList.remove("d-none");
            document.getElementById("estimate-result").scrollIntoView({
                behavior: 'smooth'
            });
        });
    });
</script>
