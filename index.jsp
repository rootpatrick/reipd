<%@page import="java.sql.SQLException"%>
<%@page import="adminOp.Connect"%>
<!DOCTYPE html>
<%
// java code 
Connect c=new Connect();
c.connection();

try 
{
  c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` LIMIT 15");
}
catch(SQLException e)
    {
        
    }
%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>REIPD - Reseau d'Initiative Pour la Paix et le Developpement | Reiped</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/logo1.jpg">
</head><!--/head-->

<!--style modals-->
  <style>
    .example-modal .modal {
      position: relative;
      top: auto;
      bottom: auto;
      right: auto;
      left: auto;
      display: block;
      z-index: 1;
    }

    .example-modal .modal {
      background: transparent !important;
    }
  </style>

<body>
<div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            <h1 id="ok"><strong>Reipd</strong>   <img class="img-circle img-bordered-sm" src="images/logo1.jpg" alt="logo" style="width: 50px;"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll active"><a href="#home">Accueil</a></li>
            <li class="scroll"><a href="#services">Domaines D'intervention</a></li> 
            <li class="scroll"><a href="#about-us">Apropos</a></li>                     
            <li class="scroll"><a href="#portfolio">Activites</a></li>
            <li class="scroll"><a href="#team">Equipe</a></li>
            <li class="scroll"><a href="#blog">Temoignage</a></li>
            <li class="scroll"><a href="#contact">Contact</a></li>

          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->

  <header id="home">
    <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
         <div class="item active" style="background-image: url(images/slider/11.jpg)">
          <div class="caption">
              <h2 id="okk"><strong>Bienvenue sur <strong>Reipd</strong> <br>Nous sommes ravis de vous compter parmis nous</strong></h2>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
          </div>
        </div>
        <div class="item " style="background-image: url(images/slider/12.jpg)">
          <div class="caption">
            <p class="animated fadeInRightBig">Le reve devient realite pour la population de Mbulamishi (Village sans eau)</p>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
            <button type="button" class="btn btn-default" style="border-radius: 10px;" data-toggle="modal" data-target="#modal-default">
                En Savoir Plus
              </button>
          </div>
        </div>
        <div class="item" style="background-image: url(images/slider/10.jpg)">
          <div class="caption">
            <p class="animated fadeInRightBig">REIPD milite en faveur des enfants marginalises pour une education pour tous.</p>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
            <button type="button" class="btn btn-default" style="border-radius: 10px;" data-toggle="modal" data-target="#modal-info">
                En Savoir Plus
              </button>
        </div>
      </div>
        <div class="item" style="background-image: url(images/slider/15.jpg)">
          <div class="caption">
            <p class="animated fadeInRightBig">L'autonomisation socio-economique de la femme reste l'un des objectifs primodial de REIPD</p>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
            <button type="button" class="btn btn-default" style="border-radius: 10px;" data-toggle="modal" data-target="#modal-danger">
                En Savoir plus
              </button>
          </div>
        </div>
        <div class="item" style="background-image: url(images/slider/20.jpg)">
          <div class="caption">
            <p class="animated fadeInRightBig">Lentreprenariat social en milieu rurale pour l'amelioration des conditions de vie de nos beneficiaires finaux.</p>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
            <button type="button" class="btn btn-default" style="border-radius: 10px;" data-toggle="modal" data-target="#modal-warning">
                En Savoir Plus
              </button>
          </div>
        </div>
        <div class="item" style="background-image: url(images/slider/11.jpg)">
          <div class="caption">
            <p class="animated fadeInRightBig">Contribuer aux activites de lobbying et de plaidoyer pour<br> la restauration de la paix, la verite et la reconciliation ainsi que de la justice distributive pour tous.</p>
            <!--<a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Start now</a>-->
            <button type="button" class="btn btn-default" style="border-radius: 10px;" data-toggle="modal" data-target="#modal-success">
                En Savoir Plus
              </button>
          </div>
        </div>
      </div>
      <a class="left-control" href="#home-slider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="right-control" href="#home-slider" data-slide="next"><i class="fa fa-angle-right"></i></a>
    </div><!--/#home-slider-->
  </header><!--/#home-->

  <!-- /.modal -->

  <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">REIPD SUD KIVU</h4>
              </div>
              <div class="modal-body">
                <h3>Une sage femme remercie le coordinateur du REIPD pour avoir milite en leur faveur aupres des partenaires pour l'education pour l'adduction d'eau dans la la localite de kabushwa en connectant 23 villages, 2 ecoles et un centre de sante&hellip;</h3>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm pull-right" style="border-radius: 10px;" data-dismiss="modal">Close</button>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal modal-info fade" id="modal-info">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">REIPD SUD KIVU</h4>
              </div>
              <div class="modal-body">
                <h3>Ces enfants autochtones n'ont pas acces a l'education de qualite, expulses dans leur lieu habituel, ces enfants s'adaptent a un nouveau mode de vie.</h3>
                <h3>REIPD continue des plaidoyers aupres de ses partenaires pour un changement humain en faveur de ces familles&hellip;</h3>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm pull-right" style="border-radius: 10px;" data-dismiss="modal">Close</button>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <div class="modal modal-danger fade" id="modal-danger">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">REIPD SUD KIVU</h4>
              </div>
              <div class="modal-body">
                <h3>Toutes joyeuses, ces femmes sont reunit en cooperative des femmes vivant du petit commerce du lait, ici une photo de fammille apres le passage d'un partenaire, AfriTech Energy pour l'annonce du debut des traveaux de la micro-centrale sur la riviere Kaziha avec le partenaire SOLIFEM&hellip;</h3>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm pull-right" style="border-radius: 10px;" data-dismiss="modal">Close</button>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <div class="modal modal-warning fade" id="modal-warning">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">REIPD SUD KIVU</h4>
              </div>
              <div class="modal-body">
                <h3>La possibilite pour des engagements d'eleveurs de Kabare et Kalehe de delivrer au detail certains medicaments veterinaires a leurs adherents est liee a une forte sensibilisation et formation entrepreneuriale, nous migrons deja vers le MUSO avec notre partenaire LIDE&hellip;</h3>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm pull-right" style="border-radius: 10px;" data-dismiss="modal">Close</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <div class="modal modal-success fade" id="modal-success">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">REIPD SUD KIVU</h4>
              </div>
              <div class="modal-body">
                <h3>Grace a des techniques d'enquete(RAP) collaborative et d'engagement communautaire adaptees au contexte autochtone mobilisant les connaissances et les expertises locales mises en commun dans le cadre d'adteliers de travail, nous trouvons solutions a nos indifferences entre Eleveurs dans notre zone d'intervention&hellip;</h3>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm pull-right" style="border-radius: 10px;" data-dismiss="modal">Close</button>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
    
    <!--DOMAINE D'INTERVENTION-->
    <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
            <h2>NOS DOMAINES D'INTERVENTION</h2>
          </div>
        </div> 
      </div>
      <div class="text-center our-services">
        <div class="row">
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="service-icon">
              <i class="fa fa-rocket"></i>
            </div>
            <div class="service-info">
              <h3>Promotion de l'Agropastorale</h3>
              <p>La promotion de l'agropastoralisme s'impose d'elle-meme.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#default">
                En Savoir Plus
              </button>
          </div>
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="450ms">
            <div class="service-icon">
              <i class="fa fa-umbrella"></i>
            </div>
            <div class="service-info">
              <h3>Eau, Assainissement, Hygiene et Sante</h3>
              <p>Les probleme de sante lies au manque d;hygiene et d'assainnissement.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#modal1">
                En Savoir Plus
              </button>
          </div>
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="550ms">
            <div class="service-icon">
              <i class="fa fa-cloud"></i>
            </div>
            <div class="service-info">
              <h3>Mutuelles & Solidarite</h3>
              <p>Pour acceder a des services financiers en milieu rural vulnerable lorsque l'on est confronte a une offre.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#modal2">
                En Savoir Plus
              </button>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="650ms">
            <div class="service-icon">
              <i class="fa fa-coffee"></i>
            </div>
            <div class="service-info">
              <h3>Conseil, Orientation & Formation</h3>
              <p>REIPED met en place un programme qui consiste a accompagner ses membres.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#modal3">
                En Savoir Plus
              </button>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="750ms">
            <div class="service-icon">
              <i class="fa fa-bitbucket"></i>
            </div>
            <div class="service-info">
              <h3>Denfense des droits Humains</h3>
              <p>REIPED travaille avec les marginalises et les femmes en milieu rural.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#modal4">
                En Savoir Plus
              </button>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="850ms">
            <div class="service-icon">
              <i class="fa fa-gift"></i>
            </div>
            <div class="service-info">
              <h3>Entreprenariat Social</h3>
              <p>Convencu que la liberation des pauvres passera par l'entrepreneuriat social.</p>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#modal5">
                En Savoir Plus
              </button>
          </div>
        </div>
      </div>
    </div>
  </section><!--/#domaine d'intervention-->


  <!--modal domaine d'intervention-->

  <div class="modal fade" id="default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Promotion de L'Agropastorale</h4>
              </div>
              <div class="modal-body">
                <h3>Comme issue a la problematiquerurale et a l'insecurite alimentaire, la promotion de de l'agropastoralisme s'impose d'elle -meme et son developpement contribue a une adaptation des populations rurales au changement climatique, a la preservation de l'environnement naturel et...</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="modal1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Eau, Assainnissement, Hygiene et Sante</h4>
              </div>
              <div class="modal-body">
                <h3>Dans le milieu rural les problemes de sante est lieus au manque d'hygiene et d'assainnissement et qui menacent encore une grande majorite de la population et particulierement la frange la plus vulnerable que sont les enfants.</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="modal2">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Mutuelles & Solidarite</h4>
              </div>
              <div class="modal-body">
                <h3>Le <strong>REIPED</strong> a travers la <strong>MUSO</strong> est une reponse originale a la problematique, a la fois un outil de finnancement populaire et un groupe d'entraide pour acceder a des services financiers en milieu rural vulnerable lorsqu'on est confronte a une offre inadaptee aux besoins.</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="modal3">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Conseil, Orientation & Formation</h4>
              </div>
              <div class="modal-body">
                <h3>Beneficiaires finaux des projets, des salairies de l'entreprise, qui au cours de leur cariere doivent se repositionner sur d'autres metiers ou migrer sur d'autres postes, <strong>REIPED</strong> met en place un programme qui consiste a accompagner ses membres.</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="modal4">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Defence des droits humains</h4>
              </div>
              <div class="modal-body">
                <h3>Pour renforcer les productions et appuyer les voix et les influences collectives, <strong>REIPED</strong> travaille avec les marginalises et les femmes en millieu rural.
                </h3>
                <h3>Leur permettant d'identifier les opportunites, de prendre des decisions et d'agir en consequence.</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="modal5">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Entreprenariat Social</h4>
              </div>
              <div class="modal-body">
                <h3><strong>REIPED</strong> convencu que la liberation des pauvres passera par l'entrepreneuriat social a construit sa vision sur la <strong>restauration de la dignite de pauvres</strong> issus du millieu rural.</h3>
                <h3>Leur donner un toit, une parcelle de terre et de la nourriture est le point de depart, sans toutefois promouvoir une culture de l'assistanat...</h3>
              </div>
              <div class="modal-footer">
                <button type="button" style="border-radius: 10px;" class="btn btn-primary btn-sm pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

  <!--A PROPOS-->
  <section id="about-us" class="parallax">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>APROPOS DE NOUS</h2>
            <p><strong>REIPD</strong> est une <strong>ONG</strong> de la societe civil, oeuvrant pour la lutte contre la pauvrete en soutenant les approches entrepreneuriales et la promotion des initiatives locales de paix et de developpement dans differents domaines.</p>
            <p>Son Siege Social est situe au n60 sur l'avenue Corniche/Muhumba, Quartier NYALUKEMBA, dans la Commune d'Ibanda, ville de Bukavu, en <strong>RDC</strong></p>
            <p>Notre mission est de lutter contre la pauvrete, en Soutenant les approches entreprenariales et promouvoir les initiatives locales de paix et de developpement dans differents domaines.</p>
          </div>
          <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>MISSIONS DU REIPD</h2>
            <p><strong>REIPD</strong> se donne pour mission générale de contribuer à la recherche et l?expérimentation de modèles alternatifs de développement. De lutter contre la pauvreté en soutenant les approches entrepreneuriales et promouvoir des initiatives locales de paix et de développement dans différents domaines.
            <h5>Le choix des modèles à promouvoir est basé sur des valeurs :</h5>
            <ul>
              <li>Centrage sur la personne humaine ;</li>
              <li>Equilibre harmonieux et respect de l?individu avec les autres (sa famille, sa communauté, le genre humain) et avec la nature ;</li>
              <li>Qualité de vie pour tous.</li>
            </ul>
            <h5>Ces modèles devront aussi respecter des conditions, parmi lesquelles on peut mentionner :</h5>
            <ul>
              <li>qu?ils doivent être favorables à l?environnement, réduire la pauvreté et/ou les inégalités;</li>
              <li>accroitre la résilience des populations, favoriser l?accès aux droits fondamentaux, etc. ;</li>
              <li>qu?ils doivent être extensibles et reproductibles ;</li>
              <li>qu?ils doivent s?ancrer là où l?impact est réel et mesurable.</li>
            </ul>
            <p>Pour être réaliste et concret, <strong>REIPD</strong>  se focalisera sur une mission particulière à la fois large et relativement circonscrite: la promotion des systèmes alimentaires durables. Ce choix se justifie compte tenu des enjeux importants qu?il englobe au niveau local (notamment pour les familles rurales dans la région des grands lacs que REIPD  appuie) et au niveau global (sécurité alimentaire et résilience face au changement climatique).</p>
          </div>
          <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>VISION DU REIPD</h2>
            <p><strong>REIPD</strong> aspire à un monde permettant à chacun de vivre dans la dignité et de développer ses potentialités; un monde solidaire qui promeut l?accès de tous aux droits humains dans un environnement préservé.</p>
          </div>
        </div>
        <div class="col-sm-6">
        <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>Les Valeurs du <strong>REIPD</strong></h2>
            <ul>
              <li>La solidarité</li>
            </ul>
            <p>La volonté et la capacité de chaque individu à s?associer et à se solidariser avec ses semblables ? proches ou plus lointains, tant culturellement que socialement, géographiquement, physiquement, en termes d?âge, de religion ou encore de convictions ? et avec les générations futures constituent le socle sur lequel REIPD  base son action.</p>
            <ul>
              <li>La responsabilisation</li>
            </ul>
            <p>« Si je reçois un poisson, je mangerai un jour ; si j?apprends à pêcher, je mangerai toute la vie. »</br>
            « Si nous nous trouvons face à la misère des autres, aidons ceux-ci au maximum, avec compétence, et dans la voie du self-help, c?est-à-dire par l?éveil de l?initiative de l?autre et dans le respect de sa dignité. »</p>
            <h3>- Dominique Pire -</h3>
            <p><strong>REIPD</strong>  souhaite <strong>responsabiliser au maximum les personnes concernées.</strong> Dès lors, l?association construit son action sur base des idées et propositions naissant <strong>des acteurs locaux</strong>, de ses partenaires et de ses collaborateurs.</br>
            La responsabilisation permet de forger l?autonomie des individus et d?accroître l?estime qu?ils ont d?eux-mêmes. Sur le terrain, cela permet aux bénéficiaires d?assurer leur propre développement en choisissant la voie qu?ils souhaitent prendre. Loin de faire de l?assistanat, <strong>REIPD</strong>  mise sur l?engagement, les initiatives et la responsabilité des bénéficiaires, qui s?investissent dans les projets et participent à leur mise en ?uvre.</br>
            Cette conviction se retrouve à merveille dans le proverbe cher à <strong>REIPD</strong> : «Si je reçois un poisson je mangerai un jour, si j?apprends à pêcher, je mangerai toute ma vie». Pour cela, la formation, l?échange de connaissances et l?apprentissage permanent constituent des outils de prédilection, tant pour les collaborateurs d?Iles de Paix que pour les bénéficiaires et partenaires.</p>
            <ul>
              <li>Le respect</li>
            </ul>
            <p>« La paix est une chose positive : c?est la création d?un climat de compréhension et de respect mutuels. » </p>
            <h3>- Dominique Pire -</h3>
            <p>Le respect de l?autre et de sa différence au sein de son environnement de travail, mais aussi dans la société en général, est une valeur fondamentale de <strong>REIPD</strong> qui se traduit par un esprit et des comportements de tolérance, de compréhension et de bienveillance. Le respect nous amène à prendre des engagements concrets notamment envers :</p>
            <ul>
              <li>Nos bénéficiaires, destinataires ultimes du travail et des efforts accomplis par l?association, dans le but de leur permettre de vivre dans la dignité et de développer leurs potentialités ;</li>
              <li>Nos partenaires, avec lesquels nous tenons à construire des relations de proximité et de confiance, ancrées dans la durée ;</li>
              <li>Nos employés, afin de favoriser leur épanouissement personnel ;</li>
              <li>Nos donateurs de temps, de talent et d?argent, afin de valoriser au maximum leur engagement et leur don, en s?assurant qu?ils contribuent de manière claire à l?atteinte de la mission que REIPD  s?est fixée.</li>
              <li>L?environnement. Être respectueux et responsable consiste aussi à anticiper les grands défis et enjeux sociétaux et environnementaux pour orienter nos actions en faveur du développement d?une société durable dans le respect du monde qui nous entoure.</li>
              <li>les autres êtres humains.</li>
              <p>Une des manifestations du respect est le dialogue fraternel, qui se caractérise par le fait de discuter de façon transparente plutôt que d?imposer, exige de prendre le temps d?écouter l?autre et suppose d?être prêt à accepter des points de vue différents du sien.</p>
              <li>Mériter la confiance</li>
              <p>Les activités mises en ?uvre par <strong>REIPD</strong>  ne sont pas financées par des bénéfices comparables à ceux que générerait une entreprise commerciale qui les réinjecterait ensuite dans son activité pour s?auto-financer. Ils viennent des cotisation des membres mais généralement des achats de modules, des dons, et subventions . Autrement dit, les moyens d?action de <strong>REIPD</strong>  proviennent à 85 % de sources externes, de la part de personnes et d?organismes qui font le choix délibéré de soutenir l?association en raison de la confiance qu?ils lui accordent.</br>
              De même, les partenaires et les bénéficiaires qui choisissent de s?investir dans des projets avec <strong>REIPD</strong>  le font sur base de la confiance qu?ils ont dans l?association.</br>
              REIPD  met son point d?honneur à mériter la confiance de toutes ces personnes.</br>
              Pour cela, la rigueur, la qualité, l?efficacité et l?intégrité sont des piliers de l?activité de REIPD  auxquels l?association est très attachée :</p>
              <ul>
                <li>toutes les actions entreprises résultent d?une analyse sérieuse et d?une programmation détaillées visant à s?assurer qu?elles répondent aux besoins de l?organisation et/ou à une aspiration réelle des bénéficiaires, dans l?optique d?atteindre les résultats escomptés. Toutes ces actions font également l?objet d?un suivi rigoureux et d?évaluations régulières.</li>
                <li>la recherche permanente d?efficacité implique une gestion intègre, efficiente, rigoureuse et transparente des moyens mobilisés par l?association.</li>
              </ul>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section><!--/#about-us-->

  <section id="portfolio">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
            <h2>NOS ACTIVITES RECENTES</h2>
          </div>
        </div> 
      </div>
      <div class="text-center ">
        <div class="row">
         <%
            try 
            {
                while (c.rs.next())  {
                    String title=c.rs.getString(2).replace("@","'");
                    String bref=c.rs.getString(6).replace("@","'");
             %>
          <div class="col-lg-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="folio-image">
                <h3><%=title %></h3>
                <img class="img-responsive" src="images/portfolio/<%= c.rs.getString(5) %>" width="100px;" height="100px;" alt="">
            </div>
            <div class="">
                <p><%= bref%>  rt</p>
                <h3><i class="fa fa-map-marker"></i>  <%= (c.rs.getString(8)) %>  <%= (c.rs.getString(3))%></br>
              <i class="fa fa-calendar"></i>  <%= (c.rs.getString(7)) %></h3>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius:10px;" data-toggle="modal" data-target="#mod<%= c.rs.getString(1)%>al"">
                En Savoir Plus
              </button>
          </div>
          <%
          }
          }
    catch(SQLException e )
        {

        }
finally 
{
c.getcon().close();
}

          %>
            
          
        
        </div>
      </div>
    </div>
  </section><!--/#Activite recente-->
   <center>
         <a class="btn-primary" style="border-radius: 10px;" href="Activite.jsp">Voir toutes Les Activites</a>
        </center> 

  <!--modal activite -->
  <%
  try 
            {
                c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` LIMIT 15");
                while (c.rs.next())  {
                     String title=c.rs.getString(2).replace("@","'");
                  String Des= c.rs.getString(4).replace("@", "'");
             %>

             <div class="modal fade" id="mod<%=c.rs.getString(1)%>al">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"> <strong><%=title%> </strong></h4>
              </div>
              <div class="modal-body">
                  <h3><%=Des %>  </div>
           
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
         
        </div>
                   
             <%
          }
          }
    catch(SQLException e )
{

}
finally 
{
c.getcon().close();
}

          %>
  <section id="team">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
          <h2>NOTRE EQUIPE</h2>
          <h3>Notre equipe est composee de ...</h3>
        </div>
      </div>
      <div class="team-members">
        <div class="row">
          <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/11.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Johnny Bagaya</h3>
               
                <h3> Co-fondateur et Coordonnateur Régional</h3>
              </div>
            
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="500ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/12.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Lucie Fatuma</h3>
                
               <h3>Présidente du Conseil d'Administration</h3>
              </div>
            
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="800ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/9.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Nelly Musole</h3>
                
                <h3>Assistant d'administration REIPD</h3>
              </div>
             
            </div>
          </div>
          <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/14.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Pierre Cirhuza Mukulu</h3>
                
                <h3>Chargé de la logistique            </BR>  REIPD  </h3>
              </div>
             
            </div>
          </div>
            
              <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/15.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>David Ndikumana</h3>
                
               <h3> Chargé de la promotion de la santé et droits des Groupes marginalisés</h3>
              </div>
            </div>
          </div>
             <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/13.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Dan Klinck</h3>
                
                <h3> Conseiller au CA et Responsable de la mobilisation des Ressources</h3>
              </div>
              
            </div>
          </div>
             <div class="col-sm-3">
            <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
              <div class="member-image">
                  <img class="img-circle img-bordered-sm" src="images/team/10.jpeg" width="284px;" height="311px;" alt="user image">
              </div>
              <div class="member-info">
                <h3>Freddy Sanduku</h3>
                
                <h3>Chargé du suivi et Évaluation</h3>
              </div>
              
            </div>
          </div>
        </div>
      </div>            
    </div>
  </section><!--/#team-->

  <section id="blog">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
          <h2>TEMOIGNAGES</h2>
          <h3>Qu'est-ce que le monde parle de <strong>REIPED</strong></h3>
          <h3>Dites-nous votre impression vis-a-vis de <strong>REIPED</strong></h3>
        </div>
      </div>
      <div class="blog-posts">
        <div class="row">
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
            <div class="post-thumb">
              <a><img class="img-responsive" src="images/blog/2.jpg" alt=""></a> 
            </div>
            <div class="entry-header">
              <span class="fa fa-quo-left"></span>
              <h3>J'encourage beaucoup cette organisation sur sa communication et sa visibilite des actions sur terrain, nous pouvons facilement communiquer avec les beneficiaire finaux sur le changement humain.</h3>
              <h3><strong>Cyprien</strong> - Specialiste en communication</h3>
            </div>
          </div>

          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
            <div class="post-thumb">
              <a><img class="img-responsive" src="images/blog/3.jpg" alt=""></a>
            </div>
            <div class="entry-header">
              <h3>Nous avons eu un premier contact avec Johnny BAGAYA durant l'ete 2014 grace a Prof <strong>Moise Cifende</strong> , conseiller juridique a la <strong>CEPGL</strong> et enseignant a l' <strong>UCB</strong> et <strong>ULB</strong> et membre d'honneur de <strong>SOLIFEM</strong> . En 2014, un partenariat a ete mis en place. Un partenariat avec notre organisation grace au dynamisme et professionnalise de l'equipe technique <strong>REIPED.</strong> </h3>
              <h3><strong>Dan Klink</strong> - Chairman</h3>
            </div>
          </div> 

             <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
            <div class="post-thumb">
              <a><img class="img-responsive" src="images/blog/4.jpg" alt=""></a>
              <div class="post-meta"> 
              </div>
            </div>
            <div class="entry-header">
              <h3>Les elements de notre collaboration sont : la confiance entre tous les acteurs impliques dans la demarche, le respect de l'autre et de soi-meme, la responsabilite de chacun et une certaine philosophie conformement a laquelle un enfant eduque, soigne et nourri peut se construire et participer ensuite au developpement d'une societe meilleure.</h3>
              <h3><strong>Stanislas</strong> - Secretaire executif<h3>
            </div>
          </div>                    
        </div>               
      </div>
    </div>
  </section><!--/#blog-->

  <section id="contact">
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>CONTACTEZ-NOUS</h2>
            <h3>Pour nous contacter</h3>
          </div>
        </div>
         <div class="blog-posts">
        <div class="row">
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
            
            <h3>Office 1</h3>
            <ul class="address">
                <li><i class="fa fa-map-marker"></i><span>Address:</span> 15, Corniche, Muhumba, Bukavu <strong>RDC</strong></li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +243 819 704 268</li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +243 977 400 096</li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:info@reipd.org"> info@reipd.org</a></li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:bamujohnny@gmail.com"> bamujohnny@gmail.com</a></li>
            </ul>
          </div>

          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
              <h3>Office 2</h3>
              <ul class="address">
                 <li><i class="fa fa-map-marker"></i><span>Address:</span> 54, Nyabugogo, Kigali City <strong>RWANDA</strong></li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +250 785 801 869</li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +250 785 801 869</li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:info@reipd.org"> info@reipd.org</a></li> 
              </ul>
          </div> 

             <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
                 <h3>Office 3</h3>
                 <ul class="address">
                    <li><i class="fa fa-map-marker"></i><span>Address:</span> Bujumbura, Burundi <strong>BURUNDI</strong></li>
                    <li><i class="fa fa-phone"></i><span>Phone:</span> +257 755 361 84</li>
                    <li><i class="fa fa-phone"></i><span>Phone:</span> +257 759 891 14</li>
                    <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:nmusole@reipd.org"> nmusole@reipd.org</a></li>
                 </ul>
          </div>                    
        </div>               
      </div>  
      </div>
    </div>        
  </section><!--/#contact-->
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <h1><img class="img-circle img-bordered-sm" src="images/logo1.jpg" alt="logo" style="width: 100px;"></h1>
        </div>
        <div class="social-icons">
          <ul>
            <li><a class="envelope" href="#"><i class="fa fa-envelope"></i></a></li>
            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> 
            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a class="tumblr" href="#"><i class="fa fa-tumblr-square"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>&copy; 2017 <strong>REIPED</strong> Design.</p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>

</body>
</html>