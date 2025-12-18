@php
    $backgroundImage = $shortcode->background_image; // Lấy giá trị hình nền
    $backgroundColor = $shortcode->background_color; // Lấy giá trị màu nền
    $backgroundStyle = '';

    // Kiểm tra nếu có hình nền
    if ($backgroundImage) {
        $backgroundStyle = 'background-image: url("' . RvMedia::getImageUrl($backgroundImage) . '");';
    } elseif ($backgroundColor) { 
        $backgroundStyle = 'background-color: ' . $backgroundColor . ';';
    }
@endphp

<section class="flat-banner-about shortcode-customer py-5" style="{{ $backgroundStyle }}">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-auto">
                @if ($shortcode->title)
                    <h2>{!! BaseHelper::clean($shortcode->title) !!}</h2>
                @endif
                @if ($shortcode->description)
                    <p class="body-2 text-variant-1">
                        {!! BaseHelper::clean(nl2br($shortcode->description)) !!}
                    </p>
                @endif
                <div class="hover-btn-view">
                    @if ($shortcode->button_label)
                        <a href="{{ $shortcode->button_url }}" class="btn-view style-1">
                            <span class="text">{{ $shortcode->button_label }}</span>
                            <span class="icon icon-arrow-right2"></span>
                        </a>
                    @endif
                </div>
            </div>
            <div class="col-md-6 my-auto">
                <div class="banner-video">
                    @if ($shortcode->image)
                        {{ RvMedia::image($shortcode->image, $shortcode->title) }}
                    @endif

                    @if ($shortcode->video_url)
                        <a href="{{ $shortcode->video_url }}" data-fancybox="gallery2" class="btn-video">
                            <span class="icon icon-play"></span>
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>