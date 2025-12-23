@php
    use Botble\Media\Facades\RvMedia;

    $images = collect(range(1, 4))
        ->map(fn ($i) => $shortcode->{"slider_image_$i"} ?? null)
        ->filter();
@endphp

@if ($images->isNotEmpty())
<section class="tivatech-banner-slider">

    {{-- H1 ẨN SEO --}}
    @if ($shortcode->title)
        <h1 class="seo-hidden d-none">{{ $shortcode->title }}</h1>
    @endif

    <div class="swiper tivatechSwiper">
        <div class="swiper-wrapper">

            @foreach ($images as $image)
            <div class="swiper-slide">
                <img
                        src="{{ RvMedia::getImageUrl($image) }}"
                        alt="{{ $shortcode->title }}"
                        loading="lazy"
                        class="banner-image"
                    >
                </div>
            @endforeach

        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
</section>
@endif