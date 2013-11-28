<!doctype html>
<html>
<head>
  <meta name="layout" content="main" />
</head>
<body>
  <section id="feature_slider" class="">
        <!-- 
            Each slide is composed by <img> and .info
            - .info's position is customized with css in index.css
            - each <img> parallax effect is declared by the following params inside its class:
            
            example: class="asset left-472 sp600 t120 z3"
            left-472 means left: -472px from the center
            sp600 is speed transition
            t120 is top to 120px
            z3 is z-index to 3
            Note: Maintain this order of params

            For the backgrounds, you can combine from the bgs folder :D
        -->
        <article class="slide" id="showcasing" style="background: url('http://moetron.com/uploads/20120223_bleach02.jpg') repeat-x top center;">
            <img class="asset left-30 sp600 t120 z1" src="http://db-z.com/wp-content/uploads/2013/03/dragon-ball-tap-battle-1-150x150.jpg" />
            <div class="info">
                <h2>Les animés que vous cherchez sont toujours à portée</h2>
            </div>
        </article>
        <article class="slide" id="ideas" style="background: url('http://www.freefever.com/stock/naruto-wallpapers-friends-or-rivals-naruto-shippuuden-fanpop.jpg') repeat-x top center;">
            <div class="info">
                <h2>Il suffit de s'inscrire, et tout est trouvable</h2>
            </div>
            <img class="asset left-480 sp600 t260 z1" src="http://www.akihabara-no-baka.com/blog/images/galeries/avatar/mirai_nikki/AnB_Mirai_nikki%20(7).jpg" />
            <img class="asset left-210 sp600 t213 z2" src="http://www.zero-yen-media.fr/home/wp-content/uploads/2013/02/attaque_titans-e1361558923505-150x150.jpg" />
            <img class="asset left60 sp600 t260 z1" src="http://ikilote.net/Galeries/News/Anime/AF/PSYCHO-PASS_.jpg" />
        </article>
        <article class="slide" id="responsive" style="background: url('http://images2.fanpop.com/images/photos/5700000/One-Piece-one-piece-5727708-1920-1200.jpg') repeat-x top center;">
            <img class="asset left-472 sp600 t120 z3" src="http://media2.playgik.com/4372-17554-list/magnets-death-note.jpg" />
            <img class="asset left-190 sp500 t120 z2" src="http://www.total-manga.com/images/News/FR-2-20042-B/rendez-vous-avec-un-shonen-ambitieux.jpg" />
            <div class="info">
                <h2>
                   Toujours plus haut, toujours plus fort !
                </h2>                
            </div>
        </article>        
  </section>

    <div id="showcase">
        <div class="container">
            <div class="section_header">
                <h3>Ce que vous trouverez chez nous</h3>
            </div>            
            <div class="row feature_wrapper">
                <!-- Features Row -->
                <div class="features_op1_row">
                    <!-- Feature -->
                    <div class="span4 feature first">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="http://th00.deviantart.net/fs70/300W/b/2013/015/c/cb4f4db8191fb8cabb6182e228d932be-pixxep.jpg">
                                <span class="circle"> 
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>L'ensemble de vos animés et mangas</h6>
                            <p>
                                Avec une liste grandissant de plus de 1600 mangas, il y a de forte chances que vous trouviez votre bonheur chez nous !
                            </p>
                        </div>
                    </div>
                    <!-- Feature -->
                    <div class="span4 feature">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="http://th09.deviantart.net/fs70/200H/f/2012/142/e/a/yu_gi_oh__yami__king_of_games__by_damned_if_you_do-d50s2dd.jpg">
                                <span class="circle"> 
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>Facile d'emploi</h6>
                            <p>
                                Inscrivez-vous et ajoutez vos animés... Eh oui, c'est déjà bon !
                            </p>
                        </div>
                    </div>
                    <!-- Feature -->
                    <div class="span4 feature last">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="http://th00.deviantart.net/fs70/200H/i/2011/009/9/b/khr_fan_animation_preview_by_glezx-d36t2qk.jpg">
                                <span class="circle"> 
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>Fait par des fans, pour les fans</h6>
                            <p>
                                Nous sommes les premiers à comprendre que suivre tout ses mangas, c'est loin d'être facile. Voici notre solution !
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
