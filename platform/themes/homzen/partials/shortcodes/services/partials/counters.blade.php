@if($counters)
    <div class="flat-counter tf-counter wrap-counter wow fadeInUpSmall"
         data-wow-delay=".4s"
         data-wow-duration="2000ms">

        @foreach($counters as $counter)
            <div class="counter-box">
                <div class="count-number">
                    <div
                        class="number"
                        data-to="{{ (int) $counter['number'] }}"
                        data-duration="2000"
                    >
                        0
                    </div>
                    <div class="sub-number">
                        {{ $counter['subnumber'] }}
                    </div>
                </div>

                <div class="title-count">
                    {{ $counter['label'] }}
                </div>
            </div>
        @endforeach

    </div>
@endif
