<section class="project-details sec-pad sec-pad-content-margin-50">
    <div class="container">
        <div class="row-3-col">
            @php
                $images = json_decode($portfolio->images);
            @endphp
            @foreach($images as $image)
                <div class="col-3-col content-margin-30">
                    <img src="{{ Voyager::image($portfolio->getThumbnail($image, 'medium')) }}" alt="{{$portfolio->seo}}" />
                </div><!-- /.col-3-col -->
            @endforeach
        </div><!-- /.row-3-col -->
        <div class="row">
            <div class="col-lg-8">
                <div class="project-details__content content-margin-50">
                    <h3 class="project-details__title">
                        {{$portfolio->name}}
                    </h3><!-- /.project-details__title -->
                    <p class="project-details__text">
                        {!! $portfolio->content !!}
                    </p><!-- /.project-details__text -->

                </div><!-- /.project-details__content -->
            </div><!-- /.col-lg-8 -->
            <div class="col-lg-4">
                <div class="project-details__feature thm-gray-bg">
                    <div class="project-details__feature-item">
                        <div class="project-details__feature-name">
                            Nom:
                        </div><!-- /.project-details__feature-name -->
                        <div class="project-details__feature-option">
                            {{$portfolio->name}}
                        </div><!-- /.project-details__feature-option -->
                    </div><!-- /.project-details__feature-item -->
                    <div class="project-details__feature-item">
                        <div class="project-details__feature-name">
                            Date:
                        </div><!-- /.project-details__feature-name -->
                        <div class="project-details__feature-option">
                            {{$portfolio->date}}
                        </div><!-- /.project-details__feature-option -->
                    </div><!-- /.project-details__feature-item -->

                </div><!-- /.project-details__feature -->
            </div><!-- /.col-lg-8 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.project-details -->
