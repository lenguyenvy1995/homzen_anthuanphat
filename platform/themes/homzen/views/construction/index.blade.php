

<div class="p-2" >
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
            <div class="col-md-4">
                <a href="{{ $construction->url }}">
                    <h3>{{ $construction->name }}</h3>
                </a>
            </div>
        @endforeach
    </div>

    {{ $constructions->links() }}
</div>