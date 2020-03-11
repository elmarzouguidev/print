<section class="testimonial-one">
    <div class="container">
        <div class="testimonial-one__carousel owl-theme owl-carousel">
            @foreach($testimonials as $testi)
                <div class="item">
                    <div class="testimonial-one__single">
                        <div class="testimonial-one__image">
                            <img src="{{Voyager::image($testi->avatar)}}" alt="{{$testi->name}}" />
                        </div><!-- /.testimonial-one__image -->
                        <p class="testimonial-one__text">
                            {{$testi->content}}
                        </p>
                        <!-- /.testimonial-one__text -->
                        <h4 class="testimonial-one__name">{{$testi->name}}</h4>
                    </div><!-- /.testimonial-one__single -->
                </div><!-- /.item -->
            @endforeach

        </div><!-- /.testimonial-one__carousel -->
    </div><!-- /.container -->
</section><!-- /.testimonial-one -->
