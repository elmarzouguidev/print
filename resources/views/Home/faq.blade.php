<section class="faq-one sec-pad sec-pad-content-margin-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="faq-one__content thm-gray-bg content-margin-50">
                    <h3 class="faq-one__title">{{setting('home.faqs')}}</h3>
                    <!-- /.faq-one__title -->
                    <p class="faq-one__text">
                        {{setting('home.faqs')}}
                    </p><!-- /.faq-one__text -->
                    <div class="faq-one__image">
                        <img src="{{Voyager::image(setting('home.faqs_image'))}}" alt="haymacprint" />
                    </div><!-- /.faq-one__image -->
                </div><!-- /.faq-one__content -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6">
                <div class="content-margin-50 faq-one__accordion-wrap">
                    <!-- <div class="block-title">
                         <p class="block-title__tag-line">Dexen Faqs</p>
                         <h2 class="block-title__title">Frequently Asked Questions</h2>
                     </div> /.block-title -->
                    <div class="accrodion-grp" data-grp-name="faq-accrodion">
                        @foreach( $faqs as $faq)
                            <div class="accrodion {{$loop->first ? 'active' :''}}">
                                <div class="accrodion-title">
                                    <h4>{{$faq->question}}</h4>
                                </div>
                                <div class="accrodion-content">
                                    <div class="inner">
                                        <p>
                                            {!! $faq->responde !!}
                                        </p>
                                    </div><!-- /.inner -->
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div><!-- /.content-margin-50 -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.faq-one -->
