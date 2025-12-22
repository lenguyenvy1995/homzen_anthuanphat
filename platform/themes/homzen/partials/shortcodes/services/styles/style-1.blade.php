<section @class([
    'flat-section',
    'shortcode-customer',
    'shortcode-service-tivatech',
    'text-center' => $shortcode->centered_content,
]) @style(["background-color: $shortcode->background_color" => $shortcode->background_color])>
    <div class="container">
        {!! Theme::partial('shortcode-heading', ['shortcode' => $shortcode, 'centered' => false]) !!}

        @if ($services)
            <div @class([
                'wrap-service wow fadeInUpSmall',
                'flat-service' => $counters,
            ]) data-wow-delay=".4s" data-wow-duration="2000ms">
                @foreach ($services as $service)
                    <div class="box-service hover-btn-view">
                        <a href="{{ $service['button_url'] }}">
                            <div class="icon-box">
                                @if ($service['icon_image'])
                                    {{ RvMedia::image($service['icon_image'], $service['title'], attributes: ['class' => 'icon', 'data-bb-lazy' => 'false', 'style' => sprintf('max-width: %spx !important; max-height: %spx !important;', $iconImageSize, $iconImageSize)]) }}
                                @elseif($service['icon'])
                                    <x-core::icon :name="$service['icon']" class="icon" />
                                @endif
                            </div>
                            <div class="content">
                                <h3 class="title">{!! BaseHelper::clean($service['title']) !!}</h3>
                                <p class="description mb-4">{!! BaseHelper::clean(nl2br($service['description'])) !!}</p>
                                @if ($service['button_url'])
                                    <a href="{{ $service['button_url'] }}" class="btn btn-two">
                                        {{ $service['button_label'] ?? __('Learn More') }}
                                    </a>
                                @endif

                            </div>
                        </a>

                    </div>
                @endforeach
            </div>
        @endif

        {!! Theme::partial('shortcodes.services.partials.counters', compact('counters')) !!}
    </div>
</section>
