<section class="service-three sec-pad-top">
    <div class="container">
        <div class="block-title text-center">
            <!-- <p class="block-title__tag-line">Our Services</p> -->
             <h2 class="block-title__title">Deals</h2>
         </div><!-- /.block-title -->
        <div class="row">
            @foreach($deals as $deal)
                <div class="col-lg-4">
                    <div class="service-three__single">
                        <div class="service-three__image">
                            <img src="{{Voyager::image($deal->image)}}" alt="{{$deal->title}}" />
                        </div><!-- /.service-three__image -->
                        <div class="service-three__text-block">
                            <!--<div class="service-three__price-block">
                                <span class="service-three__price-text">de puis</span>
                                <p class="service-three__price-amount">19.90DH</p>
                            </div>-->
                            <!-- /.service-three__price-block -->
                            <h3 class="service-three__title"><a href="{{route('promos.single',$deal->slug)}}">{{$deal->title}}</a></h3>
                            <!-- /.service-three__title -->
                            <p class="service-three__text">
                                {!! $deal->content !!}
                            </p>
                            <!-- /.service-three__text -->
                            <a href="{{route('promos.single',$deal->slug)}}" class="service-three__link"><i class="fa fa-angle-right"></i></a>
                        </div><!-- /.service-three__text-block -->
                    </div><!-- /.service-three__single -->
                </div><!-- /.col-lg-4 -->
            @endforeach

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.service-three -->
