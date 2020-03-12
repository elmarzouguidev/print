<section class="project-style-one sec-pad sec-pad-content-margin-80">
    <div class="container">
        <div class="row">
            @foreach($portfolios as $portfolio)
                @php
                    $images = json_decode($portfolio->images);
                @endphp
                <div class="col-lg-4">
                    <div class="project-style-one__single content-margin-80">
                        <div class="project-style-one__image-block">
                            <img src="{{ Voyager::image($portfolio->getThumbnail($images[0], 'medium')) }}" alt="{{$portfolio->seo}}"/>
                        </div><!-- /.project-style-one__image-block -->
                        <div class="project-style-one__text-block thm-gray-bg text-center">
                            <!-- <span class="project-style-one__category">Printing</span>-->
                            <h3 class="project-style-one__title"><a href="{{route('portfolioSingle',$portfolio->slug)}}">{{$portfolio->name}}</a></h3><!-- /.project-style-one__title -->
                            <a href="#" class="project-style-one__more-link"><i class="fa fa-plus"></i></a>
                        </div><!-- /.project-style-one__text-block -->
                    </div><!-- /.project-style-one__single -->
                </div><!-- /.col-lg-4 -->
            @endforeach

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.project-style-one -->
