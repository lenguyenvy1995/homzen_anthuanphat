<div id="estimate-box" class="estimate-box">
    <h6 class="estimate-title">DỰ TOÁN CHI PHÍ XÂY NHÀ</h3>

        <div class="estimate-form">
            <div class="form-group">
                <label>Chiều rộng (m)</label>
                <input type="number" id="width" class="form-control" placeholder="Nhập chiều rộng">
            </div>

            <div class="form-group">
                <label>Chiều dài (m)</label>
                <input type="number" id="length" class="form-control" placeholder="Nhập chiều dài">
            </div>
            <div class="form-group">
                <label>Loại nhà</label>
                <select id="house_type_id" class="form-control">
                    @foreach($houseTypes as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Hình thức xây dựng</label>
                <select id="construction_type_id" class="form-control">
                    @foreach($constructionTypes as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label>Số tầng</label>
                <select id="floor_id" class="form-control">
                    @foreach($floors as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label>Móng</label>
                <select id="foundation_id" class="form-control">
                    @foreach($foundations as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label>Mái</label>
                <select id="roof_id" class="form-control">
                    @foreach($roofs as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="text-center">
                <button id="btn-estimate" class="btn btn-primary">
                    TÍNH KẾT QUẢ
                </button>
            </div>

        </div>

        <div id="estimate-result" style="display:none;">
            <h4>KẾT QUẢ DỰ TOÁN</h4>
            <ul>
                <li>Diện tích: <strong id="rs-area"></strong> m²</li>
                <li>Đơn giá / m²: <strong id="rs-base-price"></strong></li>
                <li>Hệ số tầng: <strong id="rs-floor"></strong></li>
                <li>Hệ số móng: <strong id="rs-foundation"></strong></li>
                <li>Hệ số mái: <strong id="rs-roof"></strong></li>
                <li><strong>TỔNG TIỀN: <span id="rs-total"></span></strong></li>
            </ul>
        </div>
</div>