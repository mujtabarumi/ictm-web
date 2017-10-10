		
		<?php include("header.php"); ?>

        <div class="page-title full-color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                    
                        <div class="page-title-heading">
                            <h2 class="title">Photo Gallery</h2>
                        </div>
                        <div class="breadcrumbs">
                            <ul>
                                <li class="home"><a href="#">Home </a></li>
                                <li>\ Photo Gallery</li>
                            </ul>                   
                        </div>                  
                    </div><!-- /.col-md-12 -->  
                </div><!-- /.row -->  
            </div><!-- /.container -->                      
        </div><!-- /page-title -->

        <section class="flat-row padding-v1">
            <div class="container">
                <div class="row single-course-detail" style="border:2px solid #eaeaea">
                    <div class="content-content">
                    	<h3>Category Name</h3>
                        <div class="col-xs-6 col-sm-4">
                            <a href="album-pictures.php" class="thumbnail">
                                <img src="images/gallery/dummy-image.png" alt="...">
                                <p style="">Album Title</p>
                            </a>
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <a href="#" class="thumbnail" data-toggle="modal" > 
                                <img src="images/gallery/dummy-image.png" alt="...">
                                <p style="">Album Title</p>
                            </a>
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <a href="#" class="thumbnail" data-toggle="modal" > 
                                <img src="images/gallery/dummy-image.png" alt="...">
                                <p style="">Album Title</p>
                            </a>
                        </div>
                    </div>
                </div><br>
                <div class="row single-course-detail" style="border:2px solid #eaeaea">
                    <div class="content-content">
                    	<h3>Category Name</h3>
                        <div class="col-xs-6 col-sm-4">
                            <a href="#" class="thumbnail" data-toggle="modal" >
                                <img src="images/gallery/dummy-image.png" alt="...">
                                <p style="">Album Title</p>
                            </a>
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <a href="#" class="thumbnail" data-toggle="modal" > 
                                <img src="images/gallery/dummy-image.png" alt="...">
                                <p style="">Album Title</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div id="lightbox" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <button type="button" class="close hidden" data-dismiss="modal" aria-hidden="true">×</button>
                    <div class="modal-content">
                        <div class="modal-body">                     
                            <img src="" alt="" />                         
                        </div>
                    </div>
                </div>
            </div>
        </section>

		<?php include("footer.php"); ?>
        
        <script>
        	$(document).ready(function() {
				var $lightbox = $('#lightbox');
				
				$('[data-target="#lightbox"]').on('click', function(event) {
					var $img = $(this).find('img'), 
						src = $img.attr('src'),
						alt = $img.attr('alt'),
						
						
						css = {
							'maxWidth': $(window).width() - 100,
							'maxHeight': $(window).height() - 100
						};
				
					$lightbox.find('.close').addClass('hidden');
					$lightbox.find('img').attr('src', src);
					$lightbox.find('img').attr('alt', alt);
					
					$lightbox.find('img').css(css);
				});
				
				$lightbox.on('shown.bs.modal', function (e) {
					var $img = $lightbox.find('img');
						
					$lightbox.find('.modal-dialog').css({'width': $img.width()});
					$lightbox.find('.close').removeClass('hidden');
				});
			});
        </script>
        
    </div>
</body>

</html>