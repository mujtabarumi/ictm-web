<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('head.php') ?>
</head>

<body>
<!-- container section start -->
<section id="container" class="">
    <!--header start-->
    <?php include ('topNavigation.php')?>
    <!--header end-->

    <!--sidebar start-->
    <?php include('leftNavigation.php') ?>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-files-o"></i> New &nbsp Page</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="<?php echo base_url()?>Admin/Home">Home</a></li>
                        <li><i class="icon_document_alt"></i>Page</li>
                        <li><i class="fa fa-files-o"></i>Create a new Page</li>
                    </ol>
                </div>
            </div>
            <!-- Form validations -->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Page
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="form-validate form-horizontal" id="feedback_form" method="post"  action="<?php echo base_url()?>Admin/Page/insertPage"enctype="multipart/form-data">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Title <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('title'); ?></font></p>
                                            <input class="form-control" id="title" name="title"  type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Page Keywords</label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('keywords'); ?></font></p>
                                            <input class="form-control" id="keywords" name="keywords"  type="text"  />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Page MetaData</label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('metadata'); ?></font></p>
                                            <input class="form-control" id="metadata" name="metadata"  type="text"  />
                                        </div>
                                    </div>
                                    <div class="form-group ">


                                         <label class="control-label col-sm-2">Content</label>
                                         <div class="col-sm-10">
                                             <p><font color="red"> <?php echo form_error('content'); ?></font></p>
                                             <textarea class="form-control ckeditor" name="content" rows="6" ></textarea>
                                         </div>

                                        </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-2">Image</label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('image'); ?></font></p>
                                            <input class="form-control " id="image" type="file" name="image" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Page Type<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('pagetype'); ?></font></p>
                                            <select class="form-control m-bot15" name="pagetype" required>
                                                <option value=""><?php echo SELECT_PAGE_TYPE?></option>
                                                <?php for ($i=0;$i<count(PAGE_TYPE);$i++){?>
                                                    <option><?php echo PAGE_TYPE[$i]?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Page Status<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <p><font color="red"> <?php echo form_error('status'); ?></font></p>
                                            <select class="form-control m-bot15" name="status" required>

                                                <option value="" selected><?php echo SELECT_STATUS ?></option>
                                                <?php for ($i=0;$i<count(STATUS);$i++){?>
                                                    <option><?php echo STATUS[$i]?></option>
                                                <?php } ?>

                                                </select>
                                        </div>
                                    </div>


                            <div class="form-group " align="center">
                                <div class="col-lg-10">
                                    <input class="btn btn-success" type="submit" style="margin-left: 180px">
                                    <input class="btn btn-close" type="reset" >
                                </div>
                            </div>

                            </div>

                            </form>
                        </div>
                </div>
        </section>
        </div>


        <!-- page end-->
    </section>
</section>
<!--main content end-->
<div class="text-right wrapper">
    <div class="credits">
        <a href="#">Icon College</a> by <a href="#">A2N</a>
    </div>
</div>

</section>
<!-- container section end -->

<?php include ('js.php')?>
</body>
</html>
<script type="text/javascript" src="<?php echo base_url()?>public/ckeditor/ckeditor.js"></script>


