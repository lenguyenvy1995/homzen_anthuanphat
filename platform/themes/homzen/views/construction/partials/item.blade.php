<div class="col-lg-4 col-md-6 mb-4">
    <div class="construction-item">

        {{-- IMAGE --}}
        <a href="{{ $construction->url }}" class="construction-thumb">
            <img
                src="{{ RvMedia::getImageUrl($construction->image, 'large') }}"
                alt="{{ $construction->name }}"
            >

            {{-- CODE BADGE --}}
            @if ($construction->code)
                <span class="construction-code">
                    {{ $construction->code }}
                </span>
            @endif
        </a>

        {{-- CONTENT --}}
        <div class="construction-content">

            <h3 class="construction-title">
                <a href="{{ $construction->url }}">
                    {{ $construction->name }}
                </a>
            </h3>

            <div class="construction-meta">
                @if ($construction->location)
                    <span>
                        <i class="ti-location-pin"></i>
                        {{ $construction->location }}
                    </span>
                @endif

                @if ($construction->area)
                    <span>
                        <i class="ti-ruler-alt"></i>
                        {{ $construction->area }}m²
                    </span>
                @endif
            </div>

            <div class="construction-stats">
                @if ($construction->floors)
                    <span>
                        <i class="ti-home"></i>
                        {{ $construction->floors }} tầng
                    </span>
                @endif

                <span>
                    <i class="ti-eye"></i>
                    {{ number_format($construction->views) }} lượt xem
                </span>
            </div>

            @if ($construction->tags)
                <div class="construction-tags">
                    @foreach ($construction->tags as $tag)
                        <span>#{{ $tag->name }}</span>
                    @endforeach
                </div>
            @endif

        </div>
    </div>
</div>