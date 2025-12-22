<h1>Thi Công Xây Dựng</h1>

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