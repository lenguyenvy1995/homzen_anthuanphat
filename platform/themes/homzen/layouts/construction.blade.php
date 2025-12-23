@extends(Theme::getThemeNamespace('layouts.base'))

@section('content')
    {!! apply_filters('ads_render', null, 'header_before') !!}
    {!! apply_filters('theme_front_header_content', null) !!}

    {!! Theme::partial('top-header') !!}
    {!! Theme::partial('header') !!}

    {!! apply_filters('ads_render', null, 'header_after') !!}

    <div class="container"
         style="background-color: var(--body_background_color); padding-top: 30px; padding-bottom: 30px;">
        <div class="row">
            {{-- CỘT CHÍNH --}}
            <div class="col-12 col-md-8">
                {!! Theme::content() !!}
            </div>

            {{-- SIDEBAR --}}
            <div class="col-12 col-md-4">
                {{-- FORM DỰ TOÁN --}}
                   {!! do_shortcode('[estimate_calculator]') !!}
            </div>
        </div>
    </div>

    {!! apply_filters('ads_render', null, 'footer_before') !!}
    {!! apply_filters('theme_front_footer_content', null) !!}

    {!! Theme::partial('footer') !!}
    {!! apply_filters('ads_render', null, 'footer_after') !!}
@endsection