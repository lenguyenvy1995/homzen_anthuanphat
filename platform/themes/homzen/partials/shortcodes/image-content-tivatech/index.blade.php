@php
    use Botble\Media\Facades\RvMedia;
    $backgroundImage = $shortcode->background_image; // Lấy giá trị hình nền
    $backgroundColor = $shortcode->background_color; // Lấy giá trị màu nền
    $backgroundStyle = '';

    // Kiểm tra nếu có hình nền
    if ($backgroundImage) {
        $backgroundStyle = 'background-image: url("' . RvMedia::getImageUrl($backgroundImage) . '");';
    } elseif ($backgroundColor) { 
        $backgroundStyle = 'background-color: ' . $backgroundColor . ';';
    }
    // Desktop
    $desktopImageCol = ($shortcode->desktop_position ?? 'left') === 'left'
        ? 'order-md-1'
        : 'order-md-2';

    $desktopContentCol = ($shortcode->desktop_position ?? 'left') === 'left'
        ? 'order-md-2'
        : 'order-md-1';

    // Mobile
    $mobileImageCol = ($shortcode->mobile_position ?? 'top') === 'top'
        ? 'order-1'
        : 'order-2';

    $mobileContentCol = ($shortcode->mobile_position ?? 'top') === 'top'
        ? 'order-2'
        : 'order-1';
@endphp

<section class="tivatech-image-content py-5"  style="{{ $backgroundStyle }}">
    <div class="container">
        <div class="row align-items-center">

            {{-- IMAGE --}}
            <div class="col-12 col-md-6
                {{ $mobileImageCol }}
                {{ $desktopImageCol }}
                mb-4 mb-md-0
            ">
                <div class="tivatech-image-content-img">
                    <img
                        src="{{ RvMedia::getImageUrl($shortcode->image) }}"
                        alt="{{ $shortcode->title }}"
                        loading="lazy"
                        class="img-fluid rounded"
                    >
                </div>
            </div>

            {{-- CONTENT --}}
            <div class="col-12 col-md-6
                {{ $mobileContentCol }}
                {{ $desktopContentCol }}
            ">
                <div class="tivatech-image-content-content">
                    @if ($shortcode->title)
                        <h2 class=" image-content-title mb-3">
                            {{ $shortcode->title }}
                        </h2>
                    @endif

                    @if ($shortcode->description)
                        <div class="image-content-description">
                            {!! nl2br(e($shortcode->description)) !!}
                        </div>
                    @endif
                </div>
            </div>

        </div>
    </div>
</section>