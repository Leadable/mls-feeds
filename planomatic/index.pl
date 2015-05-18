#!/usr/bin/env perl
use strict; 

use Data::Dumper qw(Dumper);
use Mojo::Template;
use Mojolicious::Lite;

get '/:tour' => sub {
  my $c = shift;

  my $tour_id = $c->param('tour');

  $c->render(template => 'tour');
};

app->start;
__DATA__

@@ tour.html.ep
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
      <meta property="og:title" content="16 Sail Vista, Newport Coast, CA, 92657" />
      <meta property="og:description" content="16 Sail Vista, Newport Coast, CA, 92657, Interactive Floor Plan &amp; Photography Presentation - PlanOmatic.com" />
      <meta property="og:image" content="http://photoplan-cache.planomatic.com/tourFiles/32571/photocache/1145604-830w553h.jpg" />

      <meta name="description" content="16 Sail Vista, Newport Coast, CA, 92657, Interactive Floor Plan &amp; Photography Presentation - PlanOmatic.com">
      <meta name="keywords" content="Jason Bradshaw, First Team Real Estate, 16 Sail Vista, Newport Coast, CA, 92657, planomatic, virtual tour, virtual tours, photography, floor plans, interactive floor plans, floorplans, virtual home tour, real estate tours, real estate, real estate property, home">

      <title>16 Sail Vista, Newport Coast, CA, 92657 - PlanOmatic</title>
    
    <!-- ALL OF THE STYLESHEETS!!! -->
    <!-- Bootstrap core CSS -->
    <link href="http://photoplan.planomatic.com/v4/public/frameworks/bootstrap-3.1.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://photoplan.planomatic.com/v4/public/frameworks/bootstrap-3.1.1/assets/js/html5shiv.js"></script>
      <script src="http://photoplan.planomatic.com/v4/public/frameworks/bootstrap-3.1.1/assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- Flippant.js Resources -->
    <link rel="stylesheet" href="http://photoplan.planomatic.com/v4/public/javascripts/flippant.js-20140228/flippant.css" type="text/css" media="screen" title="no title" charset="utf-8">
    
    <!-- Colorbox Lightbox Library -->
    <link rel="stylesheet" href="http://photoplan.planomatic.com/v4/public/javascripts/colorbox-1.5.10/photoplan4/colorbox.css" type="text/css" media="screen" title="no title" charset="utf-8">
    
    <!-- Swipebox (mobile lightbox) Resources -->
    <link rel="stylesheet" href="http://photoplan.planomatic.com/v4/public/javascripts/swipebox-1.2.1/source/swipebox.css" type="text/css" media="screen" title="no title" charset="utf-8">
    
    <!-- Custom styles for this template -->
    <link href="http://photoplan.planomatic.com/v4/public/stylesheets/main.css" rel="stylesheet">
    <style>
      /* css for the loading screen */
      html { overflow:hidden; }
      div.loadershow {
        display:block;
        position:absolute;
        top:0px;
        left:0;
        width: 100%;
        height: 100%;
        background: #EBEBEB;
        z-index: 1500; /*SimpleModal is 1002*/
      }
    
      div.loadershow .loadernote { margin-top: 30%; font-size: 11px; }
      div.loadershow p { color: #363636; text-align: center; }
      /*div.loadershow img { height: 1.4em; }*/

      div.loaderhide { display:none; }
      /* END css for the loading screen */
    </style>

    <style>
      #squeeze-photos-container {
        background-color: rgba(0, 0, 0, 0.6);
        bottom: 0;
        left: 0;
        position: absolute;
        right: 0;
        top: 0;
        z-index: 999999999;
        display:none;
      }
      #squeeze-photos-container .prompt {
      display: block;
      top: 30%;
      margin-top: -225px;
      width: 450px;
      height: 450px;
      left: 50%;
      margin-left: -225px;
  }
  .auto-comment, .prompt {
      background-color: rgb(255, 255, 255);
      border-radius: 6px;
      box-shadow: 3px 3px 15px rgb(51, 51, 51);
      display: none;
      left: 50%;
      margin-left: -360px;
      position: absolute;
      right: 130px;
      top: 105px;
      width: 720px;
      z-index: 2020;
  }
.auto-comment-header, .prompt-header {
    background-color: rgb(250, 167, 50);
    background-image: linear-gradient(to bottom, rgb(251, 180, 80), rgb(248, 148, 6));
    border-bottom: 1px solid rgb(221, 221, 221);
    border-radius: 6px 6px 0 0;
    padding: 13px 13px;
    position: relative;
}
#squeeze-photos-container .prompt-title {
    font-size: 1.18em;
    text-align: center;
}
.auto-comment-header h1.auto-comment-title, .prompt-header h1.prompt-title {
    color: rgb(255, 255, 255);
    font-size: 1.4em;
    font-weight: 400;
    margin: 0;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
#squeeze-photos-container .prompt-body {
    background-color: rgb(255, 255, 255);
    padding: 22px 30px 30px;
}
.auto-comment-body, .prompt-body {
    background-color: rgb(247, 247, 247);
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
    padding: 13px;
}
#squeeze-photos-container strong, .treatment-full-screen strong {
    display: block;
    font-size: 1.2em;
    font-weight: 400;
    line-height: 1.3em;
    margin-bottom: 12px;
    text-align: center;
}
.progress {
    position: relative;
}

.progress-goal {
    position: absolute;
    right: 0;
    top: 0;
}

body {
    color: rgb(51, 51, 51);
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 20px;
}
    </style>
  </head>
  <body class="pageview"><div id="pagebgright"></div>
    <!-- Loading View -->
    <div id="pageloading" class="loadershow">
      <p class="loadernote">
        <!-- Don't preload this one: It's the Load Screen -->
        <img src="http://photoplan.planomatic.com/v4/public/images/ajax-loader.gif" border="0" alt="Loading Your Tour..." /><br />
        Please wait while your PhotoPlan loads...
      </p>
    </div>
    
    <div id="bodywrap"><div id="bodymain">
      <!-- Header Container -->
      <div id="topnav"><div class="bgright">
        <div class="container">
          <div class="row">
            
            <div class="hidden-sm hidden-xs">
              <div class="col-md-6 gallerylink">
                <a href="#" class="galleryswap">
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-gallery2.png" alt="Gallery" />
                  <div class="swaptext">Gallery</div>
                </a>
                <span class="streetaddress"></span>
              </div>
            </div>
            
            <div class="hidden-md hidden-lg">
              <div class="col-sm-1 col-xs-2 gallerylink">
                <a href="#" class="galleryswap">
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-gallery2.png" alt="Gallery" />
                  <div class="swaptext">Gallery</div>
                </a>
              </div>
              <div class="col-sm-11 col-xs-10 hidden-sm streetaddress"></div>
              <div class="col-sm-11 col-xs-10 hidden-xs streetaddress"></div>
            </div>
            
            <!-- Desktop Address -->
            <div class="hidden-xs">
              <div class="col-sm-1 hidden-md hidden-lg"></div>
              <div class="col-md-6 col-sm-11 col-xs-9 propdetails">
                <span class="propdetail propprice"></span>
                <span class="propdetail propbeds"></span>
                <span class="propdetail propbaths"></span>
                <span class="propdetail propsqft"></span>
                <span class="propdetail propmlsnum"></span>
              </div>
            </div>
          
            <!-- Mobile Address -->
            <div class="hidden-sm hidden-md hidden-lg">
              <div class="col-xs-2"></div>
              <div class="col-xs-10 propdetails">
                <span class="propdetail propprice"></span>
                <span class="propdetail propbeds"></span>
                <span class="propdetail propbaths"></span>
                <span class="propdetail propsqft"></span>
                <span class="propdetail propmlsnum"></span>
              </div>
            </div>
          
          </div>
        </div>
      </div></div>
    
      <!-- Main Content Container -->
      <div class="container">
        <div id="homeview">
          <div class="row frame-row" style="position:relative;">
          <div class="col-md-9 col-sm-12 frame-col">
        
            <div class="row frame-row">
              <div class="col-sm-8 col-xs-12 frame-col">
                <div class="box-shadow">
                  <div id="mainphoto1" class="primaryphoto">
                    <div class="photoclip carousel slide" data-ride="carousel" data-interval="5000">
                      <div class="carousel-inner"></div>
                    </div>
                    <div class="tourgreeting wide-text"></div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 frame-col hidden-xs">
                <div class="box-shadow">
                  <div id="mainphoto2" class="secondaryphoto">
                    <div class="photoclip carousel slide" data-ride="carousel" data-interval="3000">
                      <div class="carousel-inner"></div>
                    </div>
                  </div>
                </div>
                <div class="box-shadow">
                  <div id="mainphoto3" class="secondaryphoto">
                    <div class="photoclip carousel slide" data-ride="carousel" data-interval="3300">
                      <div class="carousel-inner"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row frame-row">
              <div class="col-md-6 col-sm-6 frame-col">
                <div class="box-shadow">
                  <div class="floorplanphoto">
                    <a href="#" class="floorbox"><div class="shader"></div></a>
                    <div id="level-carousel" class="carousel slide">
                      <div class="carousel-inner"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 frame-col">
            
                <div class="box-shadow">
                  <div class="realtorinfo">
                    <div class="shader"></div>
                    <div id="realtor-carousel" class="carousel slide">
                      <div class="carousel-inner"></div>
                    </div>
                  </div>
                </div>
            
              </div>
            </div>
        
          </div>
          <div class="col-md-3 col-sm-12 frame-col prop-col">
            <div class="box-shadow prop-shadow">
              <div class="propertydetails">
                <div class="shader"></div>
                <div class="row">
                  <div class="col-md-12 col-sm-7 col-xs-12">
                    <div id="flip_front">
                        <div class="propertycols">
                          
                          <div class="logocontainer">
                            <div class="realtorlogo"></div>
                          </div>
                          
                          <!--
                          <div class="infoblock">
                            <div class="streetaddress"></div>
                            <div class="propvitals">
                              <div class="propbeds"></div>
                              <div class="propbaths"></div>
                              <div class="propsqft"></div>
                            </div>
                            <div class="mlsnum"></div>
                          </div>
                          -->
                          
                          <div class="infoblock hidden">
                            <b class="wide-text">Open House</b>
                            <div class="openhouses">
                              January 19th 1pm - 4pm
                              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-calendar.png" alt="Open House Calendar" class="calendar-icon" />
                            </div>
                          </div>
                          
                          <div class="infoblock propblurb"></div>
                          
                          <div class="moreinfolink">
                            <a class="hidden-xs hidden-sm" href="#">&lt;&lt; MORE INFO</a>
                          </div>
              
                        </div>
                        <div class="propinfocorner hidden-xs hidden-sm">
                          <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/bg-origami-corner.png" alt="Property Info Corner" />
                        </div>
                    </div>
                  </div>
                  <div class="col-md-12 col-sm-5 col-xs-12">
                    <div class="socialmedia maintoursocial">
                      
                      <div class="addthis_toolbox addthis_default_style">
                        <a class="addthis_button_pinterest_share"><span>&nbsp;</span></a>
                        <a class="addthis_button_facebook"><span>&nbsp;</span></a>
                        <a class="addthis_button_google_plusone_share"><span>&nbsp;</span></a>
                        <a class="addthis_button_twitter"><span>&nbsp;</span></a>
                        <a class="addthis_button_more"><span>&nbsp;</span></a>
                        <!-- AddThis email sharing button. Just in case we want it
                          <a class="addthis_button_email at300b"><span>&nbsp;</span></a> -->
                        <a class="web_button_email at300b" href="mailto:sgilroy@farviewsoft.com"><span>&nbsp;</span></a>
                        <!-- <a class="addthis_button_more"></a> -->
                      </div>
                      
                    </div>
                    <div class="propertycols">
              
                      <div class="showingbutton">
                        <button type="button" class="btn btn-success btn-requestshowing wide-text" data-toggle="modal" data-target="#requestshowing">
                          Contact Me
                        </button>
                      </div>
                      <hr class="propertymaphr" />
                      <div class="propertymap">
                        <div id="propclicker"></div>
                        <div id="prop_map"></div>
                      </div>
                    </div>
                  </div>
                </div>
          
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="galleryview">
          <div id="filter-nav" class="isotopefilter clearfix row">
            <div class="filtersearch pull-left">
              <input class="form-control input-sm" type="text" value="Search photos, for example &quot;kitchen&quot;" />
              <span class="glyphicon glyphicon-search"></span>
            </div>
        
            <!-- Force break on small screen -->
            <div class="hidden-sm hidden-md hidden-lg" style="height:3em;"></div>
          </div>
      
          <div id="gallerygrid" class="isotopegrid"></div>
          <div class="gridfooterspacer"></div>
        </div>
      </div>
    </div></div>

    <!-- Footer Container -->
    <div id="bodyfoot" class="container">
      <div class="footer">
        <div class="row">
          <div class="col-md-6 col-sm-6 copyright">
            Copyright <span class="brandedlink">PlanOmatic.com</span>
            <!-- Keep copyright date current -->
            <script language="JavaScript" type="text/javascript">
              var d=new Date(); 
              yr=d.getFullYear();
              document.write(yr);
            </script>
            / <a class="termslink" href="#">Terms &amp; Conditions</a>
          </div>
          <div class="col-md-6 col-sm-6 hidden-xs soundcontrol">
            <div id="tour_sound" class="jp-jplayer"></div>
            
            <div id="jp_container_1" class="jp-interface">
              <ul class="jp-controls">
                <li><a href="#" class="jp-play" tabindex="1">
                  Sound 'Off'
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-sound.png" alt="Sound Icon" />
                </a></li>
                <li><a href="#" class="jp-pause" tabindex="1">
                  Sound 'On'
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-sound.png" alt="Sound Icon" />
                </a></li>
              </ul>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    
    <!-- Request a Showing Form! -->
    <div class="modal fade" id="requestshowing" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="messagealert"></div>
            <div class="realtorcols"></div>
            <form class="showingform">
              <div class="row">
                <input type="hidden" id="tomail" name="tomail" value="" />
                <input type="hidden" id="tosubj" name="tosubj" value="" />
                <input type="hidden" id="totour" name="totour" value="" />
                <div class="col-sm-4">
                  <input class="form-control input-sm" type="text" placeholder="First" name="firstname" />
                </div>
                <div class="col-sm-4">
                  <input class="form-control input-sm" type="text" placeholder="Last" name="lastname" />
                </div>
                <div class="col-sm-4">
                  <input class="form-control input-sm" type="text" placeholder="Phone" name="phonenumber" />
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <input class="form-control input-sm" type="text" placeholder="Email" name="emailaddress" />
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <textarea class="form-control input-sm" rows="5" name="requestcomments" placeholder="Comments"></textarea>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Submit</button>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Terms & Conditions -->
    <div class="modal fade" id="termsandconditions" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog"><div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          
          <h4>Terms &amp; Conditions</h4>
          <h5>Technology Policies</h5>
          <p>Please read these policies related to intellectual property and technology matters carefully before using the services of PlanOmatic. By using PlanOmatic’s services, you acknowledge that you have agreed to become a party to and legally bound by these Technology Policies, and the Terms and Conditions set forth within this website. If you do not wish to be bound by these Technolgy Policies or Terms and Conditions, you should not access or otherwise use PlanOmatic’s products or services.</p>
          <h5>No Warranty</h5>
          <p>he information and materials contained in this site, including text, graphics, links or other items are provided "as is", "as available". PlanOmatic does not warrant the accuracy, adequacy or completeness of this information and materials and expressly disclaims, liability for errors or omissions in this information and materials. No warranty of any kind, implied, expressed or statutory, including but not limited to the warranties of non-infringement of third party rights, title, merchantability, fitness for a particular purpose and freedom from computer virus, is given in conjunction with the information and materials.</p>
          <h5>Links</h5>
          <p>This site may contain links to Web sites controlled or offered by third parties (non-affiliates of PlanOmatic) PlanOmatic hereby disclaims liability for, any information, materials, products or services posted or offered at any of the third party sites linked to this Web site. By creating a link to a third party Web site PlanOmatic does not endorse or recommend any products or services offered or information contained at that Web site, nor is PlanOmatic liable for any failure of products or services offered or advertised at those sites. Such third party may have a privacy policy different from that of PlanOmatic and the third party Web site may provide less security than the PlanOmatic Web site.</p>
          <h5>Additional Websites or Links</h5>
          <p>Your use of certain web sites and/or web pages within the PlanOmatic Web Sites may be subject to additional terms that are specific to such web sites and/or web pages as either contained herein and/or on such web sites and/or web pages (for example, terms that typically govern particular features or offers such as sweepstakes are typically found on the relevant web site or web pages).</p>
          <h5>Trademarks</h5>
          <p>PlanOmatic and related logos, images and names are trademarks or services marks of iPlan LLC or its subsidiaries. Other company and product names may be trademarks of the respective companies with which they are associated. The mention of such companies and product names on the Web site is with due recognition and without intent to misappropriate such names or marks.</p>
          <h5>Copyrights</h5>
          <p>PlanOmatic (including its subsidiaries and affiliates) retains full copyright ownership, rights and protection in all material contained on this Web site (including all copy, art, software, HTML code, and other code, or business methods). Except as otherwise expressly provided in these Technology Policies and the Terms and Conditions set forth herein this website, you may not copy, distribute, transmit, display, perform, reproduce, publish, license, rewrite, create derive works from, transfer, or sell any material contained on the Web site without the prior consent of PlanOmatic.</p>
          <p>None of the material contained on the Web site may be reverse-engineered, disassembled, de-compiled, transcribed, stored in a retrieval system, translated into any language or computer language, retransmitted in any form or by any means (electronic, mechanical, photo re-production, recordation or otherwise), resold or redistributed without the prior written consent of PlanOmatic</p>
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div></div>
    </div>
    
    <!-- Fullscreen div and Controls -->
    <div id="fullscreenimg" style="display:none;">
      <div class="fscreenloading">
        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/javascripts/colorbox-1.5.10/photoplan4/images/loading.gif" alt="Loading..." />
      </div>
      <div id="reducescreen">
        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/fullscreen/icon-reduce.png" alt="Exit Fullscreen" />
        Exit Fullscreen
      </div>
      <div class="fscreennav">
        <div class="fscreenprev"></div>
        <div class="fscreennext"></div>
      </div>
      
      <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-home.png" alt="Full Screen View" class="largeformat" />
    </div>

    <!-- FlipCard Back for PropertyInfo -->
    <div id="flip_back" style="display:none;">
      <div class="propertycols propertydetails">
        <div class="infoblock hidden">
          <b class="wide-text">Open House</b>
          <div class="openhouses">
            January 19th 1pm - 4pm
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-calendar.png" alt="Open House Calendar" class="calendar-icon" />
          </div>
        </div>
        <div  class="infoblock hidden">
          <div class="listingprice"></div>
        </div>
        <div class="infoblock brochurelinks">
          <b class="wide-text">Download Brochures</b><br />
          <a id="brochure4" class="brochuredownload" href="#" title="Print Flyer A"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-document.png" alt="Download Brochure" class="document-icon" />Print Flyer A</a>
          <a id="brochure3" class="brochuredownload" href="#" title="Print Flyer B"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-document.png" alt="Download Brochure" class="document-icon" />Print Flyer B</a>
          <a id="brochure2" class="brochuredownload" href="#" title="Print Photos"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-document.png" alt="Download Brochure" class="document-icon" />Print Photos</a>
          <a id="brochure1" class="brochuredownload" href="#" title="Print Floor Plan"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://photoplan.planomatic.com/v4/public/images/icon-document.png" alt="Download Brochure" class="document-icon" />Print Floor Plan</a>
        </div>
      
        <div class="infoblock propdescription"></div>
      
      </div>
      <div class="moreinfobacklink">
        <a href="#" class="closeflip">BACK &gt;&gt;</a>
      </div>
      
    </div>

<div id="squeeze-photos-container">
  <div style="display:block;" class="prompt">
    <div class="prompt-header">
      <h1 class="prompt-title">Complete your profile to view all the info and photos for this home</h1>
    </div>
    <div class="prompt-body">
      <div class="progress">
        <div style="width:0%;" class="progress-bar progress-bar-success"></div>
        <div class="progress-goal pull-right" style="font-size:14px;"><i class="icon-ok"></i> 100%</div>
      </div>
      <form class="form-buyer">
        <div class="step step_timeframe">
          <p><strong>How soon are you looking to move?</strong><a href="#" data-mode="buyer" data-step="timeframe" data-name="timeframe" data-value="Within 90 Days" class="btn btn-lg btn-default btn-block">Within 90 Days</a><a href="#" data-mode="buyer" data-step="timeframe" data-name="timeframe" data-value="3 - 6 Months" class="btn btn-lg btn-default btn-block">3 - 6 Months</a><a href="#" data-mode="buyer" data-step="timeframe" data-name="timeframe" data-value="6 - 12 Months" class="btn btn-lg btn-default btn-block">6 - 12 Months</a><a href="#" data-mode="buyer" data-step="timeframe" data-name="timeframe" data-value="12+ Months" class="btn btn-lg btn-default btn-link btn-block">12+ Months</a></p>
        </div>
        <div style="display:none;" class="step step_attached">
          <p><strong>Are you working with a particular agent?</strong><a href="#" data-mode="buyer" data-step="attached" data-name="attached" data-value="No" class="btn btn-lg btn-default btn-block">No</a><a href="#" data-mode="buyer" data-step="attached" data-name="attached" data-value="Maybe" class="btn btn-lg btn-default btn-block">Maybe</a><a href="#" data-mode="buyer" data-step="attached" data-name="attached" data-value="Yes" class="btn btn-lg btn-default btn-block">Yes</a></p>
        </div>
        <div style="display:none;" class="step step_price">
          <p><strong>What is your price range?</strong><a href="#" data-mode="buyer" data-step="price" data-name="price" data-value="600000" class="btn btn-lg btn-default btn-block">$600,000+ </a><a href="#" data-mode="buyer" data-step="price" data-name="price" data-value="300000" class="btn btn-lg btn-default btn-block">$300,000 - $600,000</a><a href="#" data-mode="buyer" data-step="price" data-name="price" data-value="100000" class="btn btn-lg btn-default btn-block">$100,000 - $300,000</a><a href="#" data-mode="buyer" data-step="price" data-name="price" data-value="0" class="btn btn-lg btn-default btn-block">$100,000 or less</a></p>
        </div>
        <div style="display:none;" class="step step_contact_method">
          <p><strong>How do you prefer to communicate if you have questions about a home?</strong><a href="#" data-mode="buyer" data-step="contact_method" data-name="contact_method" data-value="Phone" class="btn btn-lg btn-default btn-block">Phone</a><a href="#" data-mode="buyer" data-step="contact_method" data-name="contact_method" data-value="Text" class="btn btn-lg btn-default btn-block">Text Message</a><a href="#" data-mode="buyer" data-step="contact_method" data-name="contact_method" data-value="Email" class="btn btn-lg btn-default btn-block">Email </a><a href="#" data-mode="buyer" data-step="contact_method" data-name="contact_method" data-value="Website Message" class="btn btn-link btn-block">Message me through this website</a></p>
        </div>
        <div style="display:none;" class="step step_contact_time">
          <p><strong>What time of day is best to reach you?</strong><a href="#" data-mode="buyer" data-step="contact_time" data-name="contact_time" data-value="morning" class="btn btn-lg btn-default btn-block">Morning</a><a href="#" data-mode="buyer" data-step="contact_time" data-name="contact_time" data-value="afternoon" class="btn btn-lg btn-default btn-block">Afternoon</a><a href="#" data-mode="buyer" data-step="contact_time" data-name="contact_time" data-value="evening" class="btn btn-lg btn-default btn-block">Evening </a><a href="#" data-mode="buyer" data-step="contact_time" data-name="contact_time" data-value="any" class="btn btn-link btn-block">Anytime</a></p>
        </div>
        <div style="display:none;" class="step step_phone">
          <p><strong>What number can you be reached at?</strong>
            <div class="form-group">
              <input type="text" name="phone" placeholder="Your Phone" class="input-block-level input-phone form-control"/>
            </div><a data-mode="buyer" data-step="phone" data-name="phone" data-value="Phone" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">Please enter a valid phone number.</div>
        </div>
        <div style="display:none;" class="step step_cell">
          <p><strong>What cell number can you be reached by text at?</strong>
            <div class="form-group">
              <input type="text" name="cell" placeholder="Your Cell Phone" class="input-block-level input-phone form-control"/>
            </div><a data-mode="buyer" data-step="cell" data-name="phone" data-value="Phone" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">Please enter a valid phone number.</div>
        </div>
        <div style="display:none;" class="step step_email">
          <p><strong>What email address can you be reached at?</strong>
            <div class="form-group">
              <input type="text" name="email1" placeholder="Your Email" class="input-block-level input-email form-control"/>
            </div><a data-mode="buyer" data-step="email" data-name="email" data-value="Email" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">Please enter a valid email address.</div>
        </div>
        <div style="display:none;" class="step step_email_for_message">
          <p><strong>What email address should we send notifications to when you have a new message?</strong>
            <div class="form-group">
              <input type="text" name="email3" placeholder="Your Email" class="input-block-level input-email form-control"/>
            </div><a data-mode="buyer" data-step="email_for_message" data-name="email_for_message" data-value="Email" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">Please enter a valid email address.</div>
        </div>
        <div style="display:none;" class="step step_name_and_email">
          <p><strong style="text-align:center; font-size:1.4em;">Last Step!</strong><strong style="font-size:1.2em;">Please provide your name and email so we can send you occasional emails when new and reduced listings are added to the site.</strong>
            <div class="form-group">
              <!--label class="ph-alt">Name:</label-->
              <input type="text" name="name2" placeholder="Your Name" class="input-block-level input-name form-control"/>
            </div>
            <div class="form-group">
              <!--div class="ph-alt">Email:</div-->
              <input type="text" name="email2" placeholder="Your Email" class="input-block-level input-email form-control"/><span class="help-block">(Around one email per week, unsubscribe at any time.)</span>
            </div><a data-mode="buyer" data-step="name_and_email" data-name="name_and_email" data-value="Name and Email" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">All fields are required.</div>
        </div>
        <div style="display:none;" class="step step_name_and_phone">
          <p><strong style="text-align:center; font-size:1.4em;">Last Step!</strong><strong style="font-size:1.2em;">Please provide your name and phone in the event you need assistance from Jennifer Pritchett or one of her associates.</strong>
            <div class="form-group">
              <input type="text" name="name3" placeholder="Your Name" class="input-block-level input-name form-control"/>
            </div>
            <div class="form-group">
              <input type="text" name="phone3" placeholder="Your Phone" class="input-block-level input-phone form-control"/>
            </div><a data-mode="buyer" data-step="name_and_phone" data-name="name_and_phone" data-value="Name and Phone" data-loading-text="Please wait..." class="btn btn-primary btn-lg">Submit</a>
          </p>
          <div style="display:none;" class="warning">All fields are required.</div>
        </div>
        <div style="display:none;" class="step step_success_agent">
          <p><strong style="text-align:center;">Thank You.  Please enjoy the site!</strong><a data-mode="buyer" data-step="success_agent" data-name="finished" data-value="Finished" class="btn btn-primary btn-lg">Continue Browsing &raquo;</a></p>
        </div>
        <div style="display:none;" class="step step_success">
          <p><strong style="text-align:center;">Thank You.  Please enjoy the site!</strong>
            <div class="alert alert-success"><strong style="margin-bottom:0; font-size:1.2em;">Jennifer Pritchett or her associates will follow up with you to assist with your home search.</strong></div><a data-mode="buyer" data-step="success" data-name="finished" data-value="Finished" class="btn btn-primary btn-lg">Done &raquo;</a>
          </p>
        </div>
      </form>
    </div>
  </div>
</div>

    <!-- ALL OF THE JAVASCRIPTS!!! -->
    <!-- JQuery Lib -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/jquery-1.11.0/jquery-1.11.0.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- BootStrap Scripts -->
    <script src="http://photoplan.planomatic.com/v4/public/frameworks/bootstrap-3.1.1/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="http://photoplan.planomatic.com/v4/public/frameworks/bootstrap-3.1.1/docs/assets/js/vendor/holder.js" type="text/javascript" charset="utf-8"></script>

    <!-- Flippant.js Resources -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/flippant.js-20140228/flippant.js" type="text/javascript" charset="utf-8"></script>

    <!-- Isotope Library for Photo Grid -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/isotope-2.0.0-beta.10/dist/isotope.pkgd.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- Colorbox Lightbox Library -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/colorbox-1.5.10/jquery.colorbox-min.js" type="text/javascript" charset="utf-8"></script>

    <!-- Swipebox (mobile lightbox) Resources -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/swipebox-1.2.1/lib/ios-orientationchange-fix.js" type="text/javascript" charset="utf-8"></script>
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/swipebox-1.2.1/source/jquery.swipebox.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- JPlayer to Play the Music -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/jquery.jplayer-2.5.0/dist/jquery.jplayer.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- JQuery FullScreen Plugin -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/jquery.fullscreen-0.3.5/release/jquery.fullscreen-0.3.5.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- JQuery touchSwipe Library -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/jquery.touchswipe-1.6.6/jquery.touchSwipe.min.js" type="text/javascript" charset="utf-8"></script>
    
    <!-- JQuery ImagesLoaded Library -->
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/jquery.imagesloaded-3.1.8/imagesloaded.pkgd.min.js" type="text/javascript" charset="utf-8"></script>
    
    <!-- Google Maps API &amp;key=ABQIAAAAvfBuLbmD93OgN8JdN0lMIxQBOyxMDWEpAkvEhqG4QoHXhaqPCBTkiYYxMSC3hqVniHqBOufoXK0bIQ -->
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3.0&amp;sensor=false"></script>

    <!-- AddThis Library -->
    <script type="text/javascript">var addthis_config = {
      data_track_addressbar: false,
      data_track_clickback: false,
      image_include: "at_include"
    };</script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52f17ed132edbeb5"></script>

    <!-- BEGIN Google Analytics for prod UA...10 -->
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3493213-10']);
      _gaq.push(['_setDomainName', 'planomatic.com']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    <!-- END Google Analytics for prod UA...10 -->
    
    <!-- Application JavaScript Code -->
    <script>
      var planhost = 'http://photoplan.planomatic.com';
      var page_title = document.title;
      var page_desc = '';
      var metas = document.getElementsByTagName('meta');
      for (var x=0,y=metas.length; x<y; x++) {
        if (metas[x].name.toLowerCase() == 'description') {
          page_desc = metas[x];
        }
      }
    </script>
    <script src="http://photoplan.planomatic.com/v4/public/javascripts/main.js" type="text/javascript" charset="utf-8"></script>
    <script>
var _lp = function() {
  var self = this;

  self.gmaps_initialized = false;
  self.flow_position = { mode: 'buyer', step: 'timeframe' };

  return self;
}

_lp.prototype.flow = function() {
  var self = this;

  var el = $('#squeeze-photos-container');
  var progress = el.find('.progress .progress-bar');

  $(window).one('click', function() {
    console.log('hi');
    el.show();
  });

  var from_show_step = false;
  var _q = [];

  var flow = {
    start: {
      start: { 
        progress: '0%', 
        conversion_value: '0.00', 
        conversion_collected: false,
        next: {
          buyer: { mode: 'buyer', step: 'timeframe' },
          seller: { mode: 'seller', step: 'timeframe' },
          buyer_and_seller: { mode: 'seller', step: 'timeframe' },
          neither: { mode: 'neither', step: 'start' }
        }
      }
    },
    neither: {
      start: {
        progress: '50%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'Just curious, no plans to move': { mode: 'neither', step: 'browsing' },
          'I own a home in the area': { mode: 'neither', step: 'success' },
          "I'm a real estate professional": { mode: 'neither', step: 'success' },
          'Other': { mode: 'neither', step: 'other' }
        }
      },
      browsing: {
        progress: '75%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'No Thanks': { mode: 'neither', step: 'escape' },
          'Email': { mode: 'neither', step: 'success' }
        }
      },
      owner: {
        progress: '75%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'No Thanks': { mode: 'neither', step: 'escape' },
          'Location': { mode: 'neither', step: 'email' }
        }
      },
      other: {
        progress: '75%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'Explain': { mode: 'neither', step: 'success' }
        }
      },
      success: {
        progress: '100%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Finished': { mode: 'neither', step: 'finished' }
        }
      }
    },
    buyer: {
      timeframe: {
        progress: '14.28%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Within 90 Days': { mode: 'buyer', step: 'contact_method' },
          '3 - 6 Months': { mode: 'buyer', step: 'contact_method' },
          '6 - 12 Months': { mode: 'buyer', step: 'contact_method' },
          '12+ Months': { mode: 'buyer', step: 'contact_method' }
        }
      },
      attached: {
        progress: '28.56%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'No': { mode: 'buyer', step: 'price' },
          'Maybe': { mode: 'buyer', step: 'price' },
          'Yes': { mode: 'buyer', step: 'success_agent' }
        }
      },
      price: {
        progress: '42.84%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          '600000': { mode: 'buyer', step: 'contact_method' },
          '300000': { mode: 'buyer', step: 'contact_method' },
          '100000': { mode: 'buyer', step: 'contact_method' },
          '0': { mode: 'buyer', step: 'contact_method' }
        }
      },
      contact_method: {
        progress: '57.12%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'buyer', step: 'contact_time' },
          'Text': { mode: 'buyer', step: 'cell' },
          'Email': { mode: 'buyer', step: 'email' },
          'Website Message': { mode: 'buyer', step: 'email_for_message' }
        }
      },
      contact_time: {
        progress: '64.26%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'morning': { mode: 'buyer', step: 'phone' },
          'afternoon': { mode: 'buyer', step: 'phone' },
          'evening': { mode: 'buyer', step: 'phone' },
          'any': { mode: 'buyer', step: 'phone' }
        }
      },
      phone: {
        progress: '71.4%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'buyer', step: 'name_and_email' }
        }
      },
      cell: {
        progress: '71.4%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'buyer', step: 'name_and_email' }
        }
      },
      email: {
        progress: '71.4%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Email': { mode: 'buyer', step: 'name_and_phone' }
        }
      },
      email_for_message: {
        progress: '71.4%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Email': { mode: 'buyer', step: 'name_and_phone' }
        }
      },
      name_and_email: {
        progress: '85.68%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Name and Email': { mode: 'buyer', step: 'success' }
        }
      },
      name_and_phone: {
        progress: '85.68%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Name and Phone': { mode: 'buyer', step: 'success' }
        }
      },
      success: {
        progress: '100%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Finished': { mode: 'buyer', step: 'finished' }
        }
      },
      success_agent: {
        progress: '100%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'Finished': { mode: 'buyer', step: 'finished' }
        }
      }
    },
    seller: {
      timeframe: {
        progress: '10%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Within 90 Days': { mode: 'seller', step: 'attached' },
          '3 - 6 Months': { mode: 'seller', step: 'attached' },
          '6 - 12 Months': { mode: 'seller', step: 'attached' },
          '12+ Months': { mode: 'seller', step: 'attached' }
        }
      },
      attached: {
        progress: '20%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'No': { mode: 'seller', step: 'address' },
          'Maybe': { mode: 'seller', step: 'address' },
          'Yes': { mode: 'seller', step: 'success_agent' }
        }
      },
      address: {
        progress: '30%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Address': { mode: 'seller', step: 'contact_method' }
        }
      },
      contact_method: {
        progress: '40%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'seller', step: 'contact_time' },
          'Text': { mode: 'seller', step: 'cell' },
          'Email': { mode: 'seller', step: 'email' },
          'Website Message': { mode: 'seller', step: 'email_for_message' }
        }
      },
      contact_time: {
        progress: '50%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'morning': { mode: 'seller', step: 'phone' },
          'afternoon': { mode: 'seller', step: 'phone' },
          'evening': { mode: 'seller', step: 'phone' },
          'any': { mode: 'seller', step: 'phone' }
        }
      },
      phone: {
        progress: '60%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'seller', step: 'name_and_email' }
        }
      },
      cell: {
        progress: '60%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Phone': { mode: 'seller', step: 'name_and_email' }
        }
      },
      email: {
        progress: '60%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Email': { mode: 'seller', step: 'name_and_phone' }
        }
      },
      email_for_message: {
        progress: '60%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Email': { mode: 'seller', step: 'name_and_phone' }
        }
      },
      name_and_email: {
        progress: '70%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Name and Email': { mode: 'seller', step: 'success' }
        }
      },
      name_and_phone: {
        progress: '70%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Name and Phone': { mode: 'seller', step: 'success' }
        }
      },
      success: {
        progress: '100%',
        conversion_value: '1.00',
        conversion_collected: false,
        next: {
          'Finished': { mode: 'seller', step: 'finished' }
        }
      },
      success_agent: {
        progress: '100%',
        conversion_value: '0.00',
        conversion_collected: false,
        next: {
          'Finished': { mode: 'seller', step: 'finished' }
        }
      }
    }
  };

  
  var flush = function() {
    return;
    if (!_q.length) return;

    $.ajax('/u/flow/journal', {
      type: 'POST', 
      data: 'e=' + encodeURIComponent(JSON.stringify(_q)), 
      success: function(data) {
        if (data && data.contact) {
          _lp.user.remote(data);
          _lp.user.conversion();
        }
      }
    });

    _q = [];
  };

  var journal = function(step, data) {
    _q.push({ ts: (new Date()).getTime(), step: step, data: data });
    flush();
  };

  var show_step = function(mode, step, update_location_hash) {
    self.flow_position.mode = mode;
    self.flow_position.step = step;

    el.find('form, .step').hide();

    el.find('form.form-' + mode).show();
    el.find('form.form-' + mode + ' .step.step_' + step).show();

    progress.css({ width: flow[mode][step].progress });
    if (update_location_hash) { from_show_step = true; window.location.hash = mode + '/' + step; }

    var step_selector = 'form.form-' + mode + ' .step.step_' + step;
    var input = $(step_selector + ' input, ' + step_selector + ' textarea').first();

    if (input.length) input[0].focus();
  };

  var next_step = function(button) {
    var mode = button.attr('data-mode');
    var step = button.attr('data-step');
    var name = button.attr('data-name');
    var value = button.attr('data-value');

    //console.log('mode: %s, step: %s, name: %s, value: %s', mode, step, name, value);

    var next_step_mode = flow[mode][step].next[value].mode;
    var next_step_id = flow[mode][step].next[value].step;

    var journal_tag = mode + ' step ' + step;
    var journal_data = {};
    var re_data = {}; 
    var location_field;
    var warning;
    var ok = true;
    
    var done = function() {
      if (next_step_id === 'finished' || next_step_id === 'escape') {
        el.remove();

        self.flow_position.mode = 'start';
        self.flow_position.step = 'start';

        //self.photos_viewed = -1;
        //_lp.user.photo_limit = _lp.user.photo_limit * 2;
          
      } else {
        show_step(next_step_mode, next_step_id, true);
      }

      //conversion(next_step_mode, next_step_number);
      journal(journal_tag, journal_data);
      //remarketing(re_data);
    };

    var phone_or_email = function(type) {
      var input = el.find('.form-' + mode + ' .step_' + step + ' .input-' + type);
      var warning = el.find('.form-' + mode + ' .step_' + step + ' .warning');

      input.removeClass('error');
      warning.hide();

      if (!input.val()) {
        input.addClass('error');
        input[0].focus();

        warning.show();

        journal_data.ok = false;
        journal_data[step] = '';
        journal(journal_tag, journal_data);

        return;
      }

      journal_data[step] = input.val();
      journal_data.ok = true;
      done();
      return;

      button.button('loading');
      $.ajax('/u/flow/verify/' + type, {
        type: 'POST',
        data: type + '=' + encodeURIComponent(input.val()),
        success: function(data) {
          button.button('reset');

          if (!data.ok) {
            input.addClass('error');
            warning.show();
            input[0].focus();
 
            journal_data.ok = false;
            journal(journal_tag, journal_data);

            return;
          }

          input.removeClass('error');
          warning.hide();

          re_data['flow_' + mode + '_' + step + '_success'] = 1;
          done();
        }
      });
    };

    var name_and_phone_or_email = function(type) {
      var name = el.find('.form-' + mode + ' .step_' + step + ' .input-name');
      var input = el.find('.form-' + mode + ' .step_' + step + ' .input-' + type);
      var warning = el.find('.form-' + mode + ' .step_' + step + ' .warning');
      var ok = true;

      input.removeClass('error');
      name.removeClass('error');
      warning.hide().html('All fields are required.');

      journal_data.name = name.val();
      journal_data[type] = input.val();

      if (!input.val()) { input.addClass('error'); ok = false; }
      if (!name.val()) { name.addClass('error'); ok = false; }

      if (!ok) {
        warning.show();
        journal_data.ok = false;
        journal(journal_tag, journal_data);
        return;
      }

      journal_data.ok = true;
      done();
      return;
      button.button('loading');
      
      $.ajax('/u/flow/verify/' + type, {
        type: 'POST',
        data: type + '=' + encodeURIComponent(input.val()) + '&name=' + encodeURIComponent(name.val()),
        success: function(data) {
          button.button('reset');

          if (!data.ok) {
            input.addClass('error');
            warning.html(data.message).show();
    
            journal_data.ok = false;
            journal(journal_tag, journal_data);

            return;
          }

          re_data['flow_' + mode + '_' + step + '_success'] = 1;
          _lp.user.conversion();
          done();
        }
      });
    };

    var address = function() {
      var input = el.find('.form-' + mode + ' .step_' + step + ' .input-address');
      var warning = el.find('.form-' + mode + ' .step_' + step + ' .warning');

      input.removeClass('error');
      warning.hide();

      if (!input.val()) {
        input.addClass('error');
        warning.show();
        input[0].focus();

        journal_data.ok = false;
        journal_data[step] = '';
        journal(journal_tag, journal_data);

        return;
      }

      journal_data[step] = input.val();
      journal_data.ok = true;

      button.button('loading');
      
      geocode(input.val(), function(err, address) {
        button.button('reset');

        journal_data = address || {};
        journal_data.ok = true;
        journal_data.raw_location = input.val();

        if (err) {
          input.addClass('error');
          warning.show();
          input[0].focus();
 
          journal_data.ok = false;
          journal(journal_tag, journal_data);

          return;
        }

        input.removeClass('error');
        warning.hide();

        re_data['flow_' + mode + '_' + step + '_success'] = 1;
        done();
      });
    };

    var other = function() {
      var input = el.find('.form-' + mode + ' .step_' + step + ' textarea');
      var warning = el.find('.form-' + mode + ' .step_' + step + ' .warning');

      input.removeClass('error');
      warning.hide();

      if (!input.val()) {
        input.addClass('error');
        warning.show();
        input[0].focus();

        journal_data.ok = false;
        journal_data[step] = '';
        journal(journal_tag, journal_data);

        return;
      }

      journal_data[step] = input.val();
      journal_data.ok = true;

      done();
    };

    if (step === 'phone' || step === 'cell') return phone_or_email('phone');
    if (step === 'email' || step === 'email_for_message') return phone_or_email('email');
    if (step === 'name_and_email') return name_and_phone_or_email('email');
    if (step === 'name_and_phone') return name_and_phone_or_email('phone');
    if (step === 'address') return address();
    if (step === 'other') return other();
    if (step === 'browsing' && name === 'email') return phone_or_email('email');

    // all other steps
    journal_data.ok = true;
    journal_data[name] = value;
    re_data['flow_' + mode + '_' + name] = value;

    done();
  };

  var place_entered = function(place, cb) {
    self.address = {};
    var i = 0, component;
    
    var place_types = {
      street_number: 'short_name',
      route: 'long_name',
      locality: 'long_name',
      administrative_area_level_1: 'short_name',
      postal_code: 'short_name'
    };

    for(; component = place.address_components[i++]; ) {
      var type = component.types[0];
      if (place_types[type]) {
        var val = component[place_types[type]];

        self.address[type] = val;
      }
    }

    self.address.lat = place.geometry.location.lat();
    self.address.lon = place.geometry.location.lng();

    cb(null, self.address);
  };

  var geocode = function(address, cb) {
    var valid_types = { street_address: true };

    self.geocoder.geocode( { 'address': address }, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (!valid_types[results[0].types[0]]) {
          cb('Please enter a valid full property address.');
          return;
        }

        place_entered(results[0], cb);
      } else {
        cb('Please enter a valid full property address.');
      }
    });
  };

  el.find('.btn').on('click', function(e) {
    e.preventDefault();

    next_step($(this));
  });

  $(window).off('hashchange').on('hashchange', function(e) {
    e.preventDefault();

    if (from_show_step) { from_show_step = false; return; }

    var state = window.location.hash.substring(1);

    if (!state) { show_step('buyer', 'timeframe', false); return; }
    
    var found = state.match(/^(buyer|seller|start|neither)\/(\w+)$/);

    var mode = found[1];
    var step = found[2];
    
    show_step(mode, step, false);
  });

  from_show_step = self.flow_position.mode === 'start' ? true : false;
  window.location.hash = self.flow_position.mode + '/' + self.flow_position.step;

  /*
  window.sp_gmaps_api_init = function() {
    var seller_options = {
      types: [ 'geocode' ]
    };

    self.autocomplete = new google.maps.places.Autocomplete($('.form-seller input[name="address"]')[0], [ 'geocode' ]);
    
    google.maps.event.addListener(self.autocomplete, 'place_changed', function() {
      next_step($('.form-seller .step_address .btn'));
    }); 

    self.geocoder = new google.maps.Geocoder();
  };

  if (!self.gmaps_initialized) {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCbn-KLqsMT3tjugKTyGdTmIR0X4GyE26w&sensor=false&callback=sp_gmaps_api_init&libraries=places';
    document.body.appendChild(script);

    self.gmaps_initialized = true;
  }
  */
}; 

var Lp = new _lp();
   Lp.flow();

    </script>
        
  </body>
</html>
