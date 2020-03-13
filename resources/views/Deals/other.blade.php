<section class="project-style-one sec-pad sec-pad-content-margin-80">
    <div class="container">
        <div class="block-title text-center">
           
        <h2 class="block-title__title">{{setting('deals.recent')}}</h2>
        </div><!-- /.block-title -->
        <div class="row">
            @foreach($deals as $deal)
                <div class="col-lg-4">
                    <div class="project-style-one__single content-margin-80">
                        <div class="project-style-one__image-block">
                            <img src="{{Voyager::image($deal->image)}}" alt="{{$deal->title}}" />
                        </div><!-- /.project-style-one__image-block -->
                        <div class="project-style-one__text-block thm-gray-bg text-center">
                            <!--<span class="project-style-one__category">Printing</span>-->
                            <h3 class="project-style-one__title"><a href="{{route('promos.single',$deal->slug)}}">{{$deal->title}}</a></h3>
                            <!-- /.project-style-one__title -->
                            <a href="{{route('promos.single',$deal->slug)}}" class="project-style-one__more-link"><i class="fa fa-plus"></i></a>
                        </div><!-- /.project-style-one__text-block -->
                    </div><!-- /.project-style-one__single -->
                </div><!-- /.col-lg-4 -->
            @endforeach

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.project-style-one -->
