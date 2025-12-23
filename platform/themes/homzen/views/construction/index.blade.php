<div class="p-2">
    <div class="construction-tabs">
        <ul class="construction-category-list">
            @foreach ($categories as $cat)
                <li>
                    <a href="{{ $cat->url }}" class="tab">
                        {{ $cat->name }}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
    <div class="row">
        @foreach ($constructions as $construction)
            @include(Theme::getThemeNamespace('views.construction.partials.item'), ['construction' => $construction])

        @endforeach
    </div>

    {{ $constructions->links() }}
</div>