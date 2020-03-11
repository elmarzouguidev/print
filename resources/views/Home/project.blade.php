<section class="project-style-one sec-pad sec-pad-content-margin-80">
    <div class="container">
        <div class="block-title text-center">
            <!-- <p class="block-title__tag-line">Work Showcase</p> -->
            <h2 class="block-title__title">Les produits recents</h2>
        </div><!-- /.block-title -->
        <div class="row">
            @foreach($products as $product)
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="service-three__single content-margin-80">
                        <div class="service-three__image">
                            <img src="{{Voyager::image($product->image)}}" alt="{{$product->name}}"/>
                        </div><!-- /.service-three__image -->
                        <div class="service-three__text-block">
                            <div class="service-three__price-block">
                                <span class="service-three__price-text">a partir de</span>
                                <p class="service-three__price-amount">{{$product->price}} MAD</p>
                            </div><!-- /.service-three__price-block -->
                            <h3 class="service-three__title"><a href="">{{$product->name}}</a></h3><!-- /.service-three__title -->
                            <p class="service-three__text">
                                {!! $product->content !!}
                            </p><!-- /.service-three__text -->
                            <a href="#" class="service-three__link"><i class="fa fa-angle-right"></i></a>
                        </div><!-- /.service-three__text-block -->
                    </div><!-- /.service-three__single -->
                </div><!-- /.col-lg-4 -->
            @endforeach

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.project-style-one -->
