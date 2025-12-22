<article>
    <h1>{{ $construction->name }}</h1>

    <div class="content">
        {!! BaseHelper::clean($construction->content) !!}
    </div>
</article>