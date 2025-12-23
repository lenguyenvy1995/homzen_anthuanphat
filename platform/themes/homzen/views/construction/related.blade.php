<div class="construction-related">
    <h4 class="sidebar-title">DANH MỤC LIÊN QUAN</h4>

    @foreach ($relatedConstructions ?? [] as $item)
        <div class="related-item mb-3">
            <a href="{{ $item->url }}">
                <strong>{{ $item->name }}</strong>
            </a>
        </div>
    @endforeach
</div>