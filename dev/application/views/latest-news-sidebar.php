										
                                        <ul class="recent-posts clearfix">
                                            <?php foreach ($newsdata as $nd) {?>
                                            <li>
                                                <?php
                                                if ($nd->newsPhoto == null ) {
                                                    ?>
                                                    <div class="thumb item-thumbnail">
                                                        <a href="#">
                                                            <img src="<?php echo base_url() ?><?php echo FOLDER_NAME ?>/images/newsImages/NoImage.jpg"
                                                                 alt="image" style="width: 80px; height: 80px">
                                                            <div class="thumbnail-hoverlay main-color-1-bg"></div>
                                                            <div class="thumbnail-hoverlay-cross"></div>
                                                        </a>
                                                    </div>
                                                    <?php
                                                }else {
                                                    ?>
                                                    <div class="thumb item-thumbnail">
                                                        <a href="#">
                                                            <img src="<?php echo base_url() ?>AdminPanel/images/newsImages/<?php echo $nd->newsPhoto?>"
                                                                 alt="image" style="width: 80px; height: 80px">
                                                            <div class="thumbnail-hoverlay main-color-1-bg"></div>
                                                            <div class="thumbnail-hoverlay-cross"></div>
                                                        </a>
                                                    </div>
                                                    <?php
                                                }
                                                ?>
                                                <div class="text">
                                                    <a href="<?php echo base_url()?>News/<?php echo $nd->newsId?>"><?php echo $nd->newsTitle?></a>
                                                    <p><?php echo date('F d, Y',strtotime($nd->newsDate))?></p>
                                                </div>
                                            </li>
                                            <?php } ?>

                                        </ul><!-- /popular-news clearfix -->