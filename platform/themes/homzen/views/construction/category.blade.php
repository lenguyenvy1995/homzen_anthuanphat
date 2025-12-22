<h1>{{ $category->name }}</h1>

<div class="row">
    @foreach ($constructions as $item)
        <div class="col-md-4">
            <a href="{{ route('public.construction.detail', [$category->slug, $item->slug]) }}">
                {{ $item->name }}
            </a>
        </div>
    @endforeach
</div>

{{ $constructions->links() }}