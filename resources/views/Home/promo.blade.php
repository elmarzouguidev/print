<div class="cta-three thm-primary-bg sec-pad">
    <img src="{{Voyager::image(setting('home.topPromo_image'))}}" class="cta-three__image" alt="{{setting('home.topPromo')}}" />
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-7">
                <div class="block-title">
                    <!-- <p class="block-title__tag-line">Get your Stationery</p>-->
                    <h2 class="block-title__title block-title__light-color">
                        {{setting('home.topPromo')}}
                    </h2>
                </div><!-- /.block-title -->
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="cta-three__features">
                            {!! setting('home.promo_content') !!}
                        </ul><!-- /.cta-three__features -->
                    </div><!-- /.col-lg-12 -->
                </div><!-- /.row -->
                <a href="https://wa.me/212625238402" class="cta-three__btn thm-btn">Contactez-nous sur whatsapp</a>
            </div><!-- /.col-lg-5 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.cta-three -->
