<section class="contact-two thm-gray-bg">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-6 d-flex">
                <div class="my-auto">
                    <div class="block-title">

                        <h2 class="block-title__title">Profitez de l'offre</h2>
                    </div><!-- /.block-title -->
                    <form action="http://ashik.templatepath.net/dexen-html-files/inc/sendemail.php" class="contact-two__form">
                        <input type="text" name="name" placeholder="nome complet">
                        <input type="text" name="tele" placeholder="numéro de telephone">
                        <input type="text" name="email" placeholder="E-mail address">
                        <input type="hidden" name="offre" value="{{$top->title}}">

                        <button type="submit" class="contact-two__button thm-btn">envoyer</button>
                    </form>
                </div><!-- /.my-auto -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6">
                <div class="contact-two__image-block">
                    <img src="{{Voyager::image($top->image)}}" alt="{{$top->title}}" />
                </div><!-- /.contact-two__image-block -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.contact-two -->
