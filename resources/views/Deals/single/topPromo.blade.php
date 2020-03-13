<section class="contact-two thm-gray-bg">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-6 d-flex">
                <div class="my-auto">
                    <div class="block-title">
                       <!-- <p class="block-title__tag-line ">Contact Us</p>-->
                        <h2 class="block-title__title">Profitez de l'offre</h2>
                    </div><!-- /.block-title -->
                    <form action="" class="contact-two__form">
                        <input type="text" name="name" placeholder="nome complet">
                        <input type="text" name="tele" placeholder="numéro de telephone">
                        <input type="email" name="email" placeholder="E-mail address">
                        <input type="hidden" name="offre" value="{{$deal->title}}">
                        <button type="submit" class="contact-two__button thm-btn">envoyer</button>
                    </form>
                </div><!-- /.my-auto -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6">
                <div class="contact-two__image-block">
                    <img class="" src="{{Voyager::image($deal->image)}}" alt="{{$deal->title}}" />
                </div><!-- /.contact-two__image-block -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.contact-two -->
