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

<section class="shortcode-customer shortcode-customer-about flat-banner-about  py-5" style="{{ $backgroundStyle }}">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-auto ">
                <div class="about-cotent">
                    @if ($shortcode->title)
                        <h2 class="about-cotent-title">{!! BaseHelper::clean($shortcode->title) !!}</h2>
                    @endif
                    @if ($shortcode->description)
                        <div class=" about-cotent-description body-2 text-variant-1">
                            {!! BaseHelper::clean(nl2br($shortcode->description)) !!}
                        </div>
                    @endif
                    {{-- <div class="hover-btn-view about-cotent-btn">
                        @if ($shortcode->button_label)
                            <a href="{{ $shortcode->button_url }}" class="btn-view style-1">
                                <span class="text">{{ $shortcode->button_label }}</span>
                                <span class="icon icon-arrow-right2"></span>
                            </a>
                        @endif
                    </div> --}}
                    <div class="about-cotent-btn">
                        @if ($shortcode->button_label)
                            <a href="{{ $shortcode->button_url }}" class="btn btn-two">
                           {{ $shortcode->button_label }}       <span class="ms-2 icon icon-arrow-right2"></span>
                            </a>
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-md-6 my-auto">
                <div class="about-video banner-video">
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