
<section class="construction-hero">
    <div class="container text-center">
        <h1 class="title text-uppercase">
            {{ $category->name }}
        </h1>

        <div class="breadcrumb">
            <a href="{{ route('public.index') }}">Home</a>
            <span>/</span>
            <span>{{ $category->name }}</span>
        </div>

        {{-- CATEGORY TABS --}}
        <div class="construction-tabs">
            @foreach ($categories as $cat)
                <a
                    href="{{ $cat->url }}"
                    class="tab {{ $cat->id === $category->id ? 'active' : '' }}"
                >
                    {{ $cat->name }}
                </a>
            @endforeach
        </div>
    </div>
</section>

<section class="construction-list">
    <div class="container">
        <div class="row">
            @forelse ($constructions as $construction)
                <div class="col-md-4 mb-4">
                    <div class="construction-card">

                        <a href="{{ $construction->url }}" class="image">
                            <img
                                src="{{ RvMedia::getImageUrl($construction->image, 'medium', false, RvMedia::getDefaultImage()) }}"
                                alt="{{ $construction->name }}"
                            >
                        </a>

                        <div class="content">
                            <h3 class="title text-uppercase">
                                <a href="{{ $construction->url }}">
                                    {{ $construction->name }}
                                </a>
                            </h3>

                            <ul class="meta">
                                @if ($construction->location)
                                    <li>📍 {{ $construction->location }}</li>
                                @endif

                                @if ($construction->area)
                                    <li>📐 {{ $construction->area }} m²</li>
                                @endif

                                @if ($construction->floors)
                                    <li>🏗 {{ $construction->floors }} tầng</li>
                                @endif

                                <li>👁 {{ number_format($construction->views) }} lượt xem</li>
                            </ul>
                        </div>
                    </div>
                </div>
            @empty
                <p class="text-center">Chưa có công trình nào.</p>
            @endforelse
        </div>

        {{-- PAGINATION --}}
        <div class="text-center">
            {{ $constructions->links() }}
        </div>
    </div>
</section>