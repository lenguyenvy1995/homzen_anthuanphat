<section class="construction-section">
    <div class="container py-4">

        {{-- H1 SEO --}}
        <h1 class="construction-title mb-4">
            {{ $title ?? '' }}
        </h1>

        <div class="construction-tabs">
            <ul class="construction-category-list pb-3">
                @foreach ($categories as $cat)
                    <li>
                        <a href="{{ $cat->url }}"
                           class="tab {{ isset($category) && $category->id === $cat->id ? 'active' : '' }}">
                            {{ $cat->name }}
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>

        <div class="row">
            @foreach ($constructions as $construction)
                @include(
                    Theme::getThemeNamespace('views.construction.partials.item'),
                    ['construction' => $construction]
                )
            @endforeach
        </div>

        {{ $constructions->links() }}

    </div>
</section>